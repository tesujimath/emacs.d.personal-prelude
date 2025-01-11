;;; init-deadgrep --- deadrep is a frontend for ripgrep

;;; Commentary:

;;; Code:

(prelude-require-package 'deadgrep)

;; TODO this should be switchable
;; (with-eval-after-load 'deadgrep
;;   (defun deadgrep--include-args (rg-args)
;;     (push "--hidden" rg-args) ;; consider hidden folders/files
;;     (push "--follow" rg-args) ;; follow symlink
;;     )
;; (advice-add 'deadgrep--arguments :filter-return #'deadgrep--include-args)
;;   )

;; (advice-remove 'deadgrep--arguments 'deadgrep--include-args)

(global-set-key (kbd "<f5>") 'deadgrep)

(provide 'init-deadgrep)
;;; init-deadgrep.el ends here
