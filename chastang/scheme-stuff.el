(require 'quack)

(setq geiser-racket-binary "/Applications/Racket v5.3.3/bin/racket")

(add-hook 'scheme-mode-hook 'smartparens-strict-mode)
(add-hook 'racket-mode-hook 'smartparens-strict-mode)
