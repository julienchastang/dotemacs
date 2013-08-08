;; emacs ipython notebook
(require 'ein)

;; autocomplete with Jedi
(add-hook 'python-mode-hook 'jedi:setup)

;; nose
(require 'nose)

