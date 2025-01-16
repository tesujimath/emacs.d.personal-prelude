;;; load-theme --- load preferred theme

;;; Commentary:

;;; Code:

;; To install and load a custom theme we need this dependency here
;; see https://github.com/bbatsov/prelude/pull/802
(require 'prelude-packages)
(prelude-require-package 'color-theme-sanityinc-tomorrow)
(setq prelude-theme 'sanityinc-tomorrow-night)

(provide 'load-theme)
;;; load-theme.el ends here
