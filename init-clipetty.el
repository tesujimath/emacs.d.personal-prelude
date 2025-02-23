;;; init-clipetty --- send killed text to system clipboard

;;; Commentary:

;;; Code:

;; for use inside Alacritty on WSL
(prelude-require-package 'clipetty)

(global-clipetty-mode 1)
(setq select-active-regions nil)

(provide 'init-clipetty)
;;; init-clipetty.el ends here
