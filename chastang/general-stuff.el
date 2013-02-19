(menu-bar-mode -1)

;; Undo tree support
(require 'undo-tree)
(global-undo-tree-mode)

;; auto-complete
(require 'popup)
(require 'auto-complete-config)
(ac-config-default)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(ac-set-trigger-key "TAB")

(show-paren-mode 1)
