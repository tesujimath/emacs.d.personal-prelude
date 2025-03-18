;;; init-zellij --- tweaks for zellij

;;; Commentary:

;;; Code:

(defun tesujimath/clean-zellij-yank (s) (interactive "r")
       "clean zellij pane markers from string"
       (replace-regexp-in-string "\\(^│\\)\\|\\(│$\\)" "" s))

(add-hook 'yank-transform-functions 'tesujimath/clean-zellij-yank)
