(menu-bar-mode -1)

;; exec path
(add-to-list 'exec-path "/opt/local/bin/")

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Undo tree support
(global-undo-tree-mode)

;; auto-complete
(require 'popup)
(require 'auto-complete-config)
(ac-config-default)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(ac-set-trigger-key "TAB")

;; parentheses
(show-paren-mode 1)

;; smex
(smex-initialize) 
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; git
(require 'magit)
(global-git-gutter-mode t)

;;ido
(require 'ido)
(ido-mode t)

;;lisps
(add-hook 'emacs-lisp-mode-hook 'lisp-enable-paredit-hook)
(add-hook 'lisp-mode-hook 'lisp-enable-paredit-hook)
(add-hook 'lisp-interaction-mode-hook 'lisp-enable-paredit-hook)

;;nyan
(nyan-mode)

;; maxframe
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

;; snippets
(require 'yasnippet)
(yas-global-mode 1)
