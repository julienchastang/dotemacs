(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; mepla does not have everything
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(package-refresh-contents)

(defvar my/install-packages
  '(
    ac-nrepl auto-complete clojure-mode geiser magit nrepl paredit
    popup quack rainbow-delimiters smex undo-tree))

(dolist (pack my/install-packages)
  (unless (package-installed-p pack)
    (package-install pack)))

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path (concat "~/.emacs.d/" (user-login-name)))

(load "safe-load" nil t)
(safe-load "general-stuff" nil t)
(safe-load "mode-line" nil t)
(safe-load "bubbleberry-theme" nil t)
(safe-load "paredit-stuff" nil t)
(safe-load "clojure-stuff" nil t)
(safe-load "org-stuff" nil t)
(safe-load "nrepl-stuff" nil t)
(safe-load "scheme-stuff" nil t)
