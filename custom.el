(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6fc9e40b4375d9d8d0d9521505849ab4d04220ed470db0b78b700230da0a86c1" default))
 '(magit-diff-refine-hunk 'all)
 '(magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1)
 '(org-capture-templates
   '(("L" "Link" entry
      (file+headline "resources.org" "Unclassified")
      "** TODO %:description\\n%:link\\n%?")
     ("p" "Link" entry (file+headline "resources.org" "Unclassified")
      "** TODO %:description\n%:link\n\n%i\n%?")

     ("t" "Todo" entry (file+headline "" "Tasks")
      "* TODO %?\n  %i\n  %a")
     ("!" "Ideas" entry (file+headline "" "Ideas")
      "* %?\nEntered on %U\n  %i\n  %a")
     ("j" "Journal" entry (file+headline  "Journal")
      "* %?\nEntered on %U\n  %i\n  %a")
     ))
 '(org-default-notes-file "~/mobile/notes/inbox.org")
 '(org-directory "~/mobile/notes")
 '(org-todo-keywords
   '((sequence "BACKLOG(b!)" "TODO(t)" "IN-PROGRESS(i!)" "|" "DONE(d!/!)" "CANCELLED(c@)")
     (sequence "IN-PROGRESS(i!)" "WAITING(w@/!)" "|" "DONE(d!/!)" "CANCELLED(c@/!)")
     (sequence "WAITING(w@/!)" "IN-PROGRESS(i!)" "|" "CANCELLED(c@/!)")))
 '(package-selected-packages
   '(clipetty color-theme-sanityinc-tomorrow envrc deadgrep clojure-mode yaml-mode web-mode lsp-ui lsp-mode json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company consult orderless vertico exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number nlinum move-text magit projectile imenu-anywhere hl-todo guru-mode git-modes git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring anzu ag ace-window emacsql-sqlite))
 '(whitespace-line-column 1000)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight semi-bold :height 160 :width normal))))
 '(mouse ((t (:background "white smoke")))))
