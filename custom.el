(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6fc9e40b4375d9d8d0d9521505849ab4d04220ed470db0b78b700230da0a86c1" default))
 '(ledger-reports
   '(("bal" "%(binary) -f %(ledger-file) bal ^assets ^liabilities")
     ("bal-cleared" "%(binary) -f %(ledger-file) bal ^assets ^liabilities --cleared")
     ("tax 2016/17" "%(binary) -f %(ledger-file) bal ^income and not ^income:investment or ^expenses and not ^expenses:dividends -b 2016/4/1 -e 2017/4/1")
     ("tax 2017/18" "%(binary) -f %(ledger-file) bal ^income and not ^income:investment or ^expenses and not ^expenses:dividends -b 2017/4/1 -e 2018/4/1")
     ("tax 2018/19" "%(binary) -f %(ledger-file) bal income expenses -b 2018/4/1 -e 2019/4/1")
     ("tax 2019/20 with RWT" "%(binary) -f %(ledger-file) bal ^income and not ^income:investment ^expenses and not ^expenses:dividends ^liabilities and not ^liabilities:gst -b 2019/4/1 -e 2020/4/1")
     ("tax 2020/21 with RWT" "%(binary) -f %(ledger-file) bal ^income and not ^income:investment ^expenses and not ^expenses:dividends ^liabilities and not ^liabilities:gst -b 2020/4/1 -e 2021/4/1")
     ("tax 2022/23" "%(binary) -f %(ledger-file) bal ^income and not ^income:investment ^expenses and not ^expenses:dividends -b 2022/4/1 -e 2023/4/1")
     ("tax 2022/23 with RWT" "%(binary) -f %(ledger-file) bal ^income and not ^income:investment ^expenses and not ^expenses:dividends ^liabilities and not ^liabilities:gst -b 2022/4/1 -e 2023/4/1")
     ("tax 2023/24 with RWT" "%(binary) -f %(ledger-file) bal ^income and not ^income:investment ^expenses and not ^expenses:dividends ^liabilities and not ^liabilities:gst ^assets:accounts-receivable -b 2023/4/1 -e 2024/4/1")
     ("donations not other 2022/23" "%(binary) -f %(ledger-file) bal -b 2022-04-01 -e 2023-04-01 ^expenses:donations and not ^expenses:donations:other")
     ("donations total 2022/23" "%(binary) -f %(ledger-file) bal -b 2022-04-01 -e 2023-04-01 ^expenses:donations")
     ("donations unclassified 2022/23" "%(binary) -f %(ledger-file) reg -b 2022-04-01 -e 2023-04-01 ^expenses:donations:other")
     ("reg expenses" "%(binary) -f %(ledger-file) reg ^expenses")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)")
     ("unknown recent" "%(binary) -f %(ledger-file) reg Unknown -b 2019/01/01")
     ("unknown income recent" "%(binary) -f %(ledger-file) reg Unknown --limit 'amount<0' -b 2019/01/01")
     ("unknown all" "%(binary) -f %(ledger-file) reg Unknown")))
 '(magit-diff-refine-hunk 'all)
 '(magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1)
 '(org-agenda-files
   '( "~/mobile/notes/inbox.org" "~/mobile/notes/areas.org" "~/mobile/notes/projects.org" "~/mobile/notes/o-my-soul.org" "~/mobile/notes/resources.org"))
 '(org-capture-templates
   '(("L" "Link" entry
      (file+headline "resources.org" "Unclassified")
      "** TODO %:description\12%:link\12%?")
     ("p" "Link" entry
      (file+headline "resources.org" "Unclassified")
      "** TODO %:description\12%:link\12\12%i\12%?")
     ("t" "Todo" entry
      (file+headline "" "Tasks")
      "* TODO %?\12  %i\12  %a")
     ("!" "Ideas" entry
      (file+headline "" "Ideas")
      "* %?\12Entered on %U\12  %i\12  %a")
     ("j" "Journal" entry
      (file+headline "Journal")
      "* %?\12Entered on %U\12  %i\12  %a")))
 '(org-default-notes-file "~/mobile/notes/inbox.org")
 '(org-directory "~/mobile/notes")
 '(org-refile-targets '((nil :maxlevel . 2)
                        (org-agenda-files :maxlevel . 2)))
 '(org-refile-use-outline-path 'file)
 '(org-outline-path-complete-in-steps nil)
 '(org-todo-keywords
   '((sequence "BACKLOG(b!)" "TODO(t)" "IN-PROGRESS(i!)" "|" "DONE(d!/!)" "CANCELLED(c@)")
     (sequence "IN-PROGRESS(i!)" "WAITING(w@/!)" "|" "DONE(d!/!)" "CANCELLED(c@/!)")
     (sequence "WAITING(w@/!)" "IN-PROGRESS(i!)" "|" "CANCELLED(c@/!)")))
 '(package-selected-packages
   '(scss-mode bnf-mode rust-mode beancount beancount-mode protobuf-mode ledger-mode flycheck-ledger clipetty color-theme-sanityinc-tomorrow envrc deadgrep clojure-mode yaml-mode web-mode lsp-ui lsp-mode json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company consult orderless vertico exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number nlinum move-text magit projectile imenu-anywhere hl-todo guru-mode git-modes git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring anzu ag ace-window emacsql-sqlite))
 '(whitespace-line-column 1000)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight semi-bold :height 160 :width normal))))
 '(mouse ((t (:background "white smoke")))))
