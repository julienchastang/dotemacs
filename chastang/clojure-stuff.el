(defun lisp-enable-paredit-hook () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'lisp-enable-paredit-hook)
(add-hook 'lisp-mode-hook 'lisp-enable-paredit-hook)

;; Fixing paredit for OS X
;; http://www.snowfrog.net/2012/06/02/emacs-paredit-notes-for-osx/
(when (eq system-type 'darwin)
  (eval-after-load 'paredit
    '(progn
       ;; C-left
       (define-key paredit-mode-map (kbd "M-[ 5 d")
                   'paredit-forward-barf-sexp)
       ;; C-right
       (define-key paredit-mode-map (kbd "M-[ 5 c")
                   'paredit-forward-slurp-sexp)
       ;; ESC-C-left
       (define-key paredit-mode-map (kbd "ESC M-[ 5 d")
                   'paredit-backward-slurp-sexp)
       ;; ESC-C-right
       (define-key paredit-mode-map (kbd "ESC M-[ 5 c")
                   'paredit-backward-barf-sexp))))
