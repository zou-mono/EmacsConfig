;; (require 'python)
(autoload 'python-mode "python.el" "python-mode" t)
(require 'company-jedi)
                                        ;(require 'virtualenvwrapper)
;;(require 'pyenv)

;; (venv-initialize-interactive-shells) ;; if you want interactive shell support
;; (if (eq nil (file-directory-p "/home/mono/.virtualenvs/"))
;;     (make-directory "/home/mono/.virtualenvs/"))
;; (setq venv-location "/home/mono/.virtualenvs/")

;; fix a warning "Disabling backend flymake-proc-legacy-flymake because (error Can’t find a suitable init function)"
(setq flymake-start-syntax-check-on-find-file nil)

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
(eval-after-load "python"
  '(progn
     (setq python-shell-interpreter "python")
     (setq python-shell-interpreter-args "-i -u")

     (add-to-list 'company-backends 'company-jedi)

     (local-set-key (kbd "C-c j") 'elpy-goto-definition)))

;; (add-hook 'python-mode-hook
;;           (lambda ()))


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
