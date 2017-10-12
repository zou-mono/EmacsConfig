(require 'python)
(require 'company-jedi)
;(require 'virtualenvwrapper)
(require 'pyenv)
(elpy-enable)

(global-pyenv-mode)

;; (venv-initialize-interactive-shells) ;; if you want interactive shell support
;; (if (eq nil (file-directory-p "/home/mono/.virtualenvs/"))
;;     (make-directory "/home/mono/.virtualenvs/"))
;; (setq venv-location "/home/mono/.virtualenvs/")

(add-to-list 'auto-mode-alist '("\\.[pP][yY]$" . python-mode))
(setq python-shell-interpreter "python"
      python-shell-interpreter-args "-i")

;; (add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
;; (setq ein:use-auto-complete t)

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:setup-keys t)                      ; optional
;; (setq jedi:complete-on-dot t)                 ; optional
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi)
  (local-set-key (kbd "C-c j") 'elpy-goto-definition))

(add-hook 'python-mode-hook 'my/python-mode-hook)

(defun open-python ()
  (interactive)
  (run-python)
  (perspective/python)
  (python-shell-switch-to-shell)
  ;;(sr-speedbar-open)
)

;; (global-set-key (kbd "C-M-r") 'python-shell-send-region)
(global-set-key (kbd "C-x p") 'open-python)

(provide 'init-python)

