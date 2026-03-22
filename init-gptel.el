;;; init-gptel --- gptel support with ollama backend

;;; Commentary:

;;; Code:

(prelude-require-package 'gptel)

(with-eval-after-load 'gptel
  (setq gptel-ollama-backend (gptel-make-ollama "Ollama"
                               :host "localhost:11434"
                               :stream t
                               :models '(deepseek-coder:6.7b-instruct-q6_K
                                         llama3:8b-instruct-q6_K
                                         mixtral:8x7b-instruct-v0.1-q5_K_M
                                         phi3:14b-medium-128k-instruct-q6_K))
        gptel-chatgpt-backend (gptel-make-openai "ChatGPT" :key (car (process-lines "security" "find-generic-password" "-a" "tesujimath" "-s" "openai-key-emacs-gptel" "-w")) :stream t :models '(gpt-4.1-mini))
        gptel-backend gptel-ollama-backend
        gptel-model 'llama3:8b-instruct-q6_K))

;; Not using
;; gptel-default-mode 'org-mode
;; (global-set-key (kbd "C-c <return>") 'gptel-send)  ;; only needed if using org-mode


(provide 'init-gptel)
;;; init-gptel.el ends here
