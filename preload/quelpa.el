;;; quelpa --- setup to be able to use packages from quelpa

;;; Commentary:

;;; Code:

;; Download and load Quelpa if not already installed
(unless (require 'quelpa nil 'noerror)
  (with-temp-buffer
    (url-insert-file-contents
     "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)))
(require 'quelpa)

(unless (require 'quelpa-use-package nil 'noerror)
  (quelpa
   '(quelpa-use-package :fetcher github :repo "quelpa/quelpa-use-package")))
(require 'quelpa-use-package)

(provide 'quelpa)
;;; load-theme.el ends here
