(defun esk-pretty-fn ()
  (font-lock-add-keywords 
   nil `
   (("(\\(\\<fn\\>\\)"
     (0 (progn (compose-region (match-beginning 1)
			       (match-end 1)
			       "\u0192"
			       'decompose-region)))))))

(add-hook 'clojure-mode-hook 'esk-pretty-fn)

(add-hook 'clojure-mode-hook 'smartparens-strict-mode)

;; Fill Column Indicator
(add-hook 'clojure-mode-hook 'fci-mode)

;; Cider stuff

(add-hook 'cider-mode-hook 'rainbow-delimiters-mode)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)

(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;; ac-nrepl

(require 'ac-nrepl)

(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)

(add-hook 'cider-mode-hook 'ac-nrepl-setup)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-repl-mode))

(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))

