(require 'quack)

(setq geiser-racket-binary "/Applications/Racket v5.3.3/bin/racket")

(add-hook 'scheme-mode-hook 'lisp-enable-paredit-hook)
(add-hook 'racket-mode-hook 'lisp-enable-paredit-hook)
