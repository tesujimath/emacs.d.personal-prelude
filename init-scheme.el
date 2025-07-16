;;; init-scheme.el --- Scheme support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun tesujimath/indent-buffer ()
  (interactive "")
  (indent-region (point-min) (point-max)))

(add-hook 'scheme-mode-hook 'tesujimath/indent-buffer)

(provide 'init-scheme)
;;; init-scheme.el ends here
