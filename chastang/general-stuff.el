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
(setq mf-max-width 1650)  ;; Pixel width of main monitor.
(setq mf-max-height 1050)  ;; Pixel width of main monitor.
(add-hook 'window-setup-hook 'maximize-frame t)

;; snippets
(require 'yasnippet)
(yas-global-mode 1)

;; fill column indicator
(require 'fill-column-indicator)

;; rename file and buffer
;; http://emacsredux.com/blog/2013/05/04/rename-file-and-buffer/

(defun rename-file-and-buffer ()
  "Rename the current buffer and file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (message "Buffer is not visiting a file!")
      (let ((new-name (read-file-name "New name: " filename)))
        (cond
         ((vc-backend filename) (vc-rename-file filename new-name))
         (t
          (rename-file filename new-name t)
          (set-visited-file-name new-name t t)))))))

