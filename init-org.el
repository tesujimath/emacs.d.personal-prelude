;;; init-org --- tweaks for org mode

;;; Commentary:
;;; Subset of what I had in my Emacs annex.

;;; Code:


;; for org-protocol
;; https://orgmode.org/worg/org-contrib/org-protocol.html
(require 'server)
(unless (server-running-p)
  (server-start))

(require 'org-protocol)

;; export timestamps without brackets
;; http://stackoverflow.com/questions/23297422/org-mode-timestamp-format-when-exported
(defun tesujimath/org-export-filter-timestamp-remove-brackets (timestamp backend info)
  "removes relevant brackets from a timestamp"
  (cond
   ((org-export-derived-backend-p backend 'latex)
    (replace-regexp-in-string "[<>]\\|[][]" "" timestamp))
   ((org-export-derived-backend-p backend 'html)
    (replace-regexp-in-string "&[lg]t;\\|[][]" "" timestamp))))

(eval-after-load 'ox '(add-to-list
                       'org-export-filter-timestamp-functions
                       'tesujimath/org-export-filter-timestamp-remove-brackets))

(defun tesujimath/clean-region (start end) (interactive "r")
       "clean region"
       (if (use-region-p)
           (progn ( message "Cleaning region active from %d to %d" start end)
                  ;; remove Zellij pane bars
                  ;;(replace-regexp "^\\||\\|$" "" nil start end)
                  (replace-regexp "\\(^│\\)\\|\\(│$\\)" "" nil start end)
                  )))

(require 'foldout)
(add-hook 'org-mode-hook
          '(lambda ()
             (let ((org-mode-n-map (make-sparse-keymap)))
               (define-key org-mode-map (kbd "C-c n") org-mode-n-map)
               (define-key org-mode-n-map (kbd "n") '(lambda ()
                                                       (interactive "")
                                                       (foldout-zoom-subtree 0)
                                                       ))
               (define-key org-mode-n-map (kbd "w") '(lambda ()
                                                       (interactive "")
                                                       (foldout-exit-fold 0)
                                                       ))
               (define-key org-mode-n-map (kbd "c") 'tesujimath/clean-region)
               )
             (define-key org-mode-map (kbd "C-c 1") '(lambda ()
                                                       (interactive "")
                                                       (outline-hide-sublevels 1)
                                                       ))
             (define-key org-mode-map (kbd "C-c 2") '(lambda ()
                                                       (interactive "")
                                                       (outline-hide-sublevels 2)
                                                       ))
             (define-key org-mode-map (kbd "C-c 3") '(lambda ()
                                                       (interactive "")
                                                       (outline-hide-sublevels 3)
                                                       ))
             (define-key org-mode-map (kbd "C-c 9") '(lambda ()
                                                       (interactive "")
                                                       (outline-hide-sublevels 9)
                                                       ))
             (define-key org-mode-map (kbd "C-c C-h") 'hide-sublevels)
             (define-key org-mode-map (kbd "`") 'tesujimath/org-insert-tilde)
             (turn-on-flyspell)
             ))

(defun tesujimath/org-insert-tilde ()
  "Insert a tilde using `org-self-insert-command'."
  (interactive)
  (setq last-command-event ?~)
  (call-interactively #'org-self-insert-command))

(provide 'init-org)
;;; init-org.el ends here