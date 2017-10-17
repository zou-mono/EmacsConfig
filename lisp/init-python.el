(require 'python)
(require 'company-jedi)
                                        ;(require 'virtualenvwrapper)
;;(require 'pyenv)

;; (venv-initialize-interactive-shells) ;; if you want interactive shell support
;; (if (eq nil (file-directory-p "/home/mono/.virtualenvs/"))
;;     (make-directory "/home/mono/.virtualenvs/"))
;; (setq venv-location "/home/mono/.virtualenvs/")

(elpy-enable)

(add-to-list 'auto-mode-alist '("\\.[pP][yY]$" . python-mode))


;; (add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
;; (setq ein:use-auto-complete t)

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:setup-keys t)                      ; optional
;; (setq jedi:complete-on-dot t)                 ; optional

;; (defun my/python-mode-hook ()
;;   (add-to-list 'company-backends 'company-jedi)
;;   (local-set-key (kbd "C-c j") 'elpy-goto-definition))

(setq python-shell-interpreter "python")       
(setq python-shell-interpreter-args "-i")

(add-hook 'python-mode-hook
          (lambda ()
            (add-to-list 'company-backends 'company-jedi)
            (local-set-key (kbd "C-c j") 'elpy-goto-definition)))


;;;###autoload
(defun open-python ()
  (interactive)
  (run-python)
  (global-pyenv-mode)
  (perspective/python)
  (python-shell-switch-to-shell))

;; (global-set-key (kbd "C-M-r") 'python-shell-send-region)
;;(global-set-key (kbd "C-x p") 'open-python)

(provide 'init-python)

