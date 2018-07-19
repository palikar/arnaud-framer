;;; arnaud-framer.el --- Resizing frames of meacs with kybindings
;; Copyright (C) 2016 Stanislav Arnaudov
;; Author: Stanislav Arnaudov Keywords: lisp, sexp, smartparens

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of the
;; License, or (at your option) any later version.
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public Licensei for more details.
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see
;; <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; Code:
(provide 'arnaud-framer)

(defvar framer-mode-hook nil)




(defun decrease-width ()
  "Make the current frame smaller in width."
  (interactive)
  (if (window-resizable nil -50 t nil t)
      (window-resize nil -50 t nil t))
  )

(defun increase-width ()
  "Make the current frame smaller in width."
  (interactive)
  (if (window-resizable nil 50 t nil t)
      (window-resize nil 50 t nil t))
  )


(defun decrease-height ()
  "Make the current frame smaller in width."
  (interactive)
  (if (window-resizable nil -50 nil nil t)
      (window-resize nil -50 nil nil t))
  )

(defun increase-height ()
  "Make the current frame smaller in width."
  (interactive)
  (if (window-resizable nil 50 nil nil t)
      (window-resize nil 50 nil nil t))
  )

(defvar framer-mode-map
  (let
      (
       (map (make-keymap)))
    (define-key map (kbd "S-<left>") 'increase-width)
    (define-key map (kbd "S-<right>") 'decrease-width)
    (define-key map (kbd "C-S-<right>") 'increase-height)
    (define-key map (kbd "C-S-<right>") 'decrease-height)
    map)
  "Keymap for Framer minor mode.")


(define-minor-mode framer-mode
  "Mode that enables manual control over emacs frames' sizes."
  :lighter " Framer"
  :keymap framer-mode-map)

(define-minor-mode global-framer-mode
  "Mode that enables manual control over emacs frames' sizes."
  :lighter " Framer"
  :keymap framer-mode-map
  :global t)

;;; arnaud-framer ends here
