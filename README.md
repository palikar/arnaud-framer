# Abstract

A simple package implementing a mode that allows you to quickly resize the Emacs&rsquo; windows in the current frame(inspired by [tiling windows mangers](https://en.wikipedia.org/wiki/Tiling_window_manager)). After activating the mode, you can use several functions that will intuitively resize the current window while respecting it relative position. By default the resizing is done with the arrow-keys. Resizing with the left arrow will grow or shrink the current windows depending to its relative position to other windows.


# Dependencies

There is a menu implemented in the **.el** file that is implemented with [hydra](https://github.com/abo-abo/hydra) so consider this the only dependency of the package.


# Getting Started

Works perfect on GNU Emacs version 26.1 The &ldquo;installation&rdquo; is pretty standard for a package that is not on MELPA. Just clone the repository

> git clone <https://github.com/palikar/arnaud-framer>

and load the *arnaud-framer.el* file

```emacs-lisp
(load "~/path/to/arnaud-framer")
```

If the file is in your load-path you can require it with:

```emacs-lisp
(require 'arnaud-framer)
```

After that several things at your disposal for easy &ldquo;framing&rdquo; of your buffers.

-   `(framer-mode)` - activates the default keybindings on a buffer local level
-   `(global-framer-mode)` - activates the default keybindings on a global local level
-   The functions `framer-decrease-width`, `framer-increse-width`, `framer-decrease-height` and `framer-increse-height` which are pretty selfexplanatory.
-   The function `framer-hydra-menu` that pops up a menu that allows you to do the resizing in a somewhat of a obvious way.

The other function that you&rsquo;ll find are&#x2026;non of your concern.


# Preferred (by me) keybindings

By default, upon the activation of the mode, with the keybindings of the key-map you can resize windows with `S-<up>/<down>/<left>/<right>`. *Up* and *down* control the height and *left* and *right* control the width of the window. *Note:* Myeah, I don&rsquo;t really use shift selection as a&#x2026;&ldquo;Еmacs power-user&rdquo; if you will. `C-c h 5` Opens the menu for resizing. From there you can again work with the arrow keys and close the menu either with `q` or with anything else that is now a button of the menu.


# Customization

The package defines one custom - `resizing-step` - that controls how big the resizing &ldquo;jumps&rdquo; are. The default value is 50 and it works pretty fine. *Note:* The value of `resizing-step` is in pixels.
