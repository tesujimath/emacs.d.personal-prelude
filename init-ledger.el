;;; init-ledger.el --- Support for the ledger CLI accounting tool -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(prelude-require-package 'ledger-mode)
(prelude-require-package 'flycheck-ledger)
(with-eval-after-load 'flycheck
  (with-eval-after-load 'ledger-mode
    (require 'flycheck-ledger)))

(with-eval-after-load 'ledger-mode
  (define-key ledger-mode-map (kbd "RET") 'newline)
  (define-key ledger-mode-map (kbd "C-o") 'open-line))

(setq ledger-highlight-xact-under-point nil
      ledger-use-iso-dates nil
      ledger-mode-should-check-version nil)

(add-hook 'ledger-mode-hook 'goto-address-prog-mode)

(provide 'init-ledger)
;;; init-ledger.el ends here
