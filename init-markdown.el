;;; init-markdown --- tweaks for markdown mode

;;; Commentary:

;;; Code:

(add-hook 'markdown-mode-hook
          '(lambda ()
             (setq-local whitespace-line-column 1000)
             ))

(provide 'init-markdown)
;;; init-markdown.el ends here
