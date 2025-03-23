;;; init-beancount.el --- Support for the beancount CLI accounting tool -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(prelude-require-package 'beancount)

;; (add-hook 'beancount-mode-hook
;;           (lambda () (setq-local electric-indent-chars nil)))

(add-hook 'beancount-mode-hook 'outline-minor-mode)
(add-hook 'beancount-mode-hook
          (lambda ()
            (define-key beancount-mode-map (kbd "C-c C-n") 'outline-next-visible-heading)
            (define-key beancount-mode-map (kbd "C-c C-p") 'outline-previous-visible-heading)
            ))

(add-hook 'beancount-mode-hook 'flymake-bean-check-enable)

(provide 'init-beancount)
;;; init-beancount.el ends here
