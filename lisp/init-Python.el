(require 'python)
(require 'window-purpose)
(require 'company-jedi)
;(require 'virtualenvwrapper)
(require 'pyenv)

(global-pyenv-mode)

;; (venv-initialize-interactive-shells) ;; if you want interactive shell support
;; (if (eq nil (file-directory-p "/home/mono/.virtualenvs/"))
;;     (make-directory "/home/mono/.virtualenvs/"))
;; (setq venv-location "/home/mono/.virtualenvs/")

(add-to-list 'auto-mode-alist '("\\.[pP][yY]$" . python-mode))
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")

;; (add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
;; (setq ein:use-auto-complete t)

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:setup-keys t)                      ; optional
;; (setq jedi:complete-on-dot t)                 ; optional
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))
(add-hook 'python-mode-hook 'my/python-mode-hook)

(purpose-mode)
(add-to-list 'purpose-user-mode-purposes '(python-mode . py))
(add-to-list 'purpose-user-mode-purposes '(inferior-python-mode . py-repl))
(purpose-compile-user-configuration)

(defun open-python-perspective ()
  (interactive)
  (purpose-load-window-layout-file "~/.emacs.d/.Playout")
  (sr-speedbar-open)
)

(global-set-key (kbd "C-M-r") 'python-shell-send-region)
(global-set-key (kbd "C-c p") 'open-python-perspective)


