;; nrepl stuff

(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

(add-hook 'nrepl-mode-hook 'lisp-enable-paredit-hook)

(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)

;;autocomplete
(require 'ac-nrepl)
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete" '(add-to-list 'ac-modes
   'nrepl-mode))
