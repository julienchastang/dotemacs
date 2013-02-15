(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path (concat "~/.emacs.d/" (user-login-name)))

(load "safe-load" nil t)
(safe-load "general-stuff" nil t)
(safe-load "bubbleberry-theme" nil t)
(safe-load "clojure-stuff" nil t)
(safe-load "org-stuff" nil t)
