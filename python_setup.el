;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; name the package
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'python_setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; https://github.com/kiwanami/emacs-epc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'epc)
(require 'jedi)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Jedi setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Jedi
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook
(lambda ()
(jedi:setup)
))

(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:server-command (list "python3" jedi:server-script))
;; (jedi-mode 1)
;; 
;; (add-hook 'python-mode-hook 'jedi:setup)
;; ;;(add-hook 'python-mode-hook 'jedi:ac-setup)
;; (setq jedi:setup-keys t)
;; (setq jedi:server-args
;;       '("--log-level" "DEBUG"
;;         "--log-traceback"))
;; (setq jedi:complete-on-dot t)
;; (autoload 'jedi:setup "jedi" nil t)
;; 
;; 
;; 
;; (defun my-python-hook ()
;;   (interactive)
;;   (define-key python-mode-map (kbd "RET") 'newline-and-indent))
;; (add-hook 'python-mode-hook 'my-python-hook)
;; 
;; (setq jedi:setup-keys t)
