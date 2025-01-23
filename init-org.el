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

;; for structure template expansion
(require 'org-tempo)

;;; header line format lifted with thanks from:
;;; https://github.com/purcell/emacs.d/blob/master/lisp/init-org.el
;;; Show the clocked-in task - if any - in the header line
(defun tesujimath/show-org-clock-in-header-line ()
  (setq-default header-line-format '((" " org-mode-line-string " "))))

(defun tesujimath/hide-org-clock-from-header-line ()
  (setq-default header-line-format nil))

(add-hook 'org-clock-in-hook 'tesujimath/show-org-clock-in-header-line)
(add-hook 'org-clock-out-hook 'tesujimath/hide-org-clock-from-header-line)
(add-hook 'org-clock-cancel-hook 'tesujimath/hide-org-clock-from-header-line)

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
             (let ((org-mode-m-map (make-sparse-keymap)))
               (define-key org-mode-map (kbd "C-c m") org-mode-m-map)
               (define-key org-mode-m-map (kbd "n") '(lambda ()
                                                       (interactive "")
                                                       (foldout-zoom-subtree 0)
                                                       ))
               (define-key org-mode-m-map (kbd "w") '(lambda ()
                                                       (interactive "")
                                                       (foldout-exit-fold 0)
                                                       ))
               (define-key org-mode-m-map (kbd "c") 'tesujimath/clean-region)
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
             (setq-local whitespace-line-column 1000)
             ))

(defun tesujimath/org-insert-tilde ()
  "Insert a tilde using `org-self-insert-command'."
  (interactive)
  (setq last-command-event ?~)
  (call-interactively #'org-self-insert-command))

(provide 'init-org)
;;; init-org.el ends here
