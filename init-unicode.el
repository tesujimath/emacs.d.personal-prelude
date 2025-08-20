;;; init-unicode.el --- various unicode-related functions -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun tesujimath/search-forward-nonascii ()
  (interactive "")
  (re-search-forward "[[:nonascii:]]"))

(provide 'init-unicode)
;;; init-unicode.el ends here
