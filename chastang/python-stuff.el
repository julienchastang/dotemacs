;; emacs ipython notebook
(require 'ein)

;; autocomplete with Jedi
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

;; nose
(require 'nose)

