(setq org-todo-keywords
             '((sequence "➜" "✈" "|" "✔" )))

(setq org-todo-keyword-faces
      (quote (("➜" :foreground "red"       :weight bold)
              ("✈" :foreground "goldenrod" :weight bold)
              ("✔" :foreground "forest green"))))

(setq org-priority-faces
      '((?A . (:foreground "red"))
        (?B . (:foreground "#00BB00" ))
        (?C . (:foreground "blue" ))))

;; code block syntax highlighting
(setq org-src-fontify-natively t)
