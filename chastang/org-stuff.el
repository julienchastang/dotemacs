;; org mode stuff

(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done 'time)

(setq org-confirm-babel-evaluate nil)
(setq org-todo-keywords
             '((sequence "TODO" "PROG" "STCK" "DONE" )))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "#DB2929" :background "#1A1A1A")
              ("PROG" :foreground "#D08800" :background "#1A1A1A")
              ("STCK" :foreground "#375EB7" :background "#1A1A1A")
              ("DONE" :foreground "#43A243" :background "#1A1A1A"))))

;; needs to be in org file itself, but don't know how to do that yet.
(setq org-tag-faces 
      '(("URGENT" :background "#DB2929")
	("Python" :foreground "#3772A2" :background "#FFDC50")
	("IDV"    :foreground "#1411C0" :background "#349403")))

(setq org-priority-faces
      '((?A . (:foreground "red"))
        (?B . (:foreground "#D08800" ))
        (?C . (:foreground "#43A243" ))))

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

