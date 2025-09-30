;;; init-clojure --- tweaks for clojure mode

;;; Commentary:

;;; Code:

;; (use-package typed-clojure-mode
;;   :quelpa (typed-clojure-mode :fetcher github :repo "tesujimath/typed-clojure-mode" :branch "lexical-let")
;;   :config
;;   (add-hook 'clojure-mode-hook 'typed-clojure-mode)
;;   )

(prelude-require-package 'clj-refactor)

(defun tesujimath/clojure-mode-hook ()
  (setq cljr-warn-on-eval nil)                   ; don't warn when doing refactoring
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'tesujimath/clojure-mode-hook)

(provide 'init-clojure)
;;; init-clojure.el ends here
