;; use host-specific customization
(setq custom-file (expand-file-name
                   (format "custom.%s.el" (car (split-string system-name "\\.")))
                   prelude-personal-dir))
(load custom-file)
