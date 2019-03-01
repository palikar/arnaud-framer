EMACS=emacs
CURL=curl --silent
ERT_URL=http://git.savannah.gnu.org/cgit/emacs.git/plain/lisp/emacs-lisp/ert.el?h=emacs-24.3

.PHONY: ert test test-batch package

package: *.el
	@ver=`grep -o "Version: .*" arnaud-framer.el | cut -c 10-`; \
	tar cjvf arnaud-framer-$$ver.tar.bz2 --mode 644 `git ls-files '*.el' | xargs`

clean:
	@rm -rf arnaud-framer-*/ arnaud-framer-*.tar arnaud-framer-*.tar.bz2 *.elc ert.el

test: compile
	${EMACS} -Q -nw -L . \
		--eval "(let (pop-up-windows) (ert t))"

test-batch: compile
	${EMACS} -Q --batch -L .  -L ./test \
		-l test/test-utils.el \
		--eval "(ert-run-tests-batch-and-exit '(not (tag interactive)))"

downloads:
	${EMACS} -Q --batch -l ert || \<
	${CURL} ${ERT_URL} > ert.el

compile:
	${EMACS} -Q --batch -L . -f batch-byte-compile arnaud-framer.el
