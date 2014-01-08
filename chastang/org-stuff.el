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

;; latex stuff

(require 'org-latex)

(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))

(add-to-list 'org-export-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

