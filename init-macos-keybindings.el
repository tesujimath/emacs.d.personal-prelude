;;; init-macos-keybindings.el --- Mac friendly keybindings -*-
;;; Commentary:
;;; Code:

;; Use MacOS standard for toggle-frame-fullscreen
(global-set-key (kbd "C-s-f") 'toggle-frame-fullscreen)

;; can't get used to home/end being whole doc, so reset to line-oriented
(global-set-key [home] 'move-beginning-of-line)
(global-set-key [end] 'move-end-of-line)

(provide 'init-macos-keybindings)
;;; init-macos-keybindings.el ends here
