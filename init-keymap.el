;;; init-keymap.el --- Integrate with keymap -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; map shift up/down, since terminfo for wezterm doesn't seem to be quite right
(define-key input-decode-map "\e[1;2A" [S-up])
(define-key input-decode-map "\e[1;2B" [S-down])

(provide 'init-keymap)

;;; init-keymap.el ends here
