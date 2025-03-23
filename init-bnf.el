;;; init-bnf.el --- support for BNF and EBNF -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(prelude-require-package 'bnf-mode)

(add-to-list 'auto-mode-alist '("\\.ebnf\\'" . bnf-mode))

(provide 'init-bnf)
;;; init-bnf.el ends here
