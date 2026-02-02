;;; init-clojure --- tweaks for clojure mode

;;; Commentary:

;;; Code:

;; (use-package typed-clojure-mode
;;   :quelpa (typed-clojure-mode :fetcher github :repo "tesujimath/typed-clojure-mode" :branch "lexical-let")
;;   :config
;;   (add-hook 'clojure-mode-hook 'typed-clojure-mode)
;;   )

(prelude-require-package 'clj-refactor)

(prelude-require-package 'flycheck-clj-kondo)

(defun tesujimath/clojure-mode-hook ()
  (setq cljr-warn-on-eval nil)                   ; don't warn when doing refactoring
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'tesujimath/clojure-mode-hook)

;; Clojure autoformat using zprint
;; zprint -c: read config from project if present
(with-eval-after-load 'apheleia  (push '(zprint . ("zprint" "{:fn-map {\"f/attempt-all\" :binding, \"prop/for-all\" :binding}}")) apheleia-formatters)
                      (setf (alist-get 'clojure-mode apheleia-mode-alist) 'zprint))

(with-eval-after-load 'flycheck
  (require 'flycheck-clj-kondo))

(provide 'init-clojure)
;;; init-clojure.el ends here
