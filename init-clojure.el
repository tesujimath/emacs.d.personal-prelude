;;; init-clojure --- tweaks for clojure mode

;;; Commentary:

;;; Code:

(use-package typed-clojure-mode
  :quelpa (typed-clojure-mode :fetcher github :repo "sstraust/typed-clojure-mode")
  :config
  (add-hook 'clojure-mode-hook 'typed-clojure-mode)
  )

(provide 'init-clojure)
;;; init-clojure.el ends here
