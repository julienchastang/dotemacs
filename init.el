(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; mepla does not have everything
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(package-refresh-contents)

(defvar  my/install-packages   
  '(
    ;; Clojure
    clojure-mode clojure-test-mode cider ac-nrepl

    ;; Lisp
    smartparens rainbow-delimiters

    ;; Scheme
    geiser quack

    ;; git
    magit git-gutter

    ;; misc
    popup smex undo-tree w3m markdown-mode 
    websocket request cyberpunk-theme nyan-mode 
    maxframe auto-complete yasnippet fill-column-indicator

    ;;Python
    ein jedi nose python-mode 
    ))

(dolist (pack my/install-packages)
  (unless (package-installed-p pack)
    (package-install pack)))

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path (concat "~/.emacs.d/" (user-login-name)))

;; color themes
(add-to-list 'custom-theme-load-path 
	     (concat "~/.emacs.d/" 
		     (user-login-name) "/themes"))

(load "safe-load" nil t)
(safe-load "general-stuff" nil t)
(safe-load "mode-line" nil t)
(safe-load "color-stuff" nil t)
(safe-load "smartparens-stuff" nil t)
(safe-load "clojure-stuff" nil t)
(safe-load "org-stuff" nil t)
(safe-load "scheme-stuff" nil t)
(safe-load "w3m-stuff" nil t)
(safe-load "markdown-stuff" nil t)
(safe-load "python-stuff" nil t)
