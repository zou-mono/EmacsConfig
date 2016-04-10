(require 'python)
(require 'window-purpose)
(require 'ein)

(add-to-list 'auto-mode-alist '("\\.[pP][yY]$" . python-mode))
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")

(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
(setq ein:use-auto-complete t)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional

(purpose-mode)
(add-to-list 'purpose-user-mode-purposes '(python-mode . py))
(add-to-list 'purpose-user-mode-purposes '(inferior-python-mode . py-repl))
(purpose-compile-user-configuration)

(defun open-python-project ()
  (interactive)
  (purpose-load-frame-layout-file "~/.emacs.d/.Playout")
)

(global-set-key (kbd "C-c p") 'open-python-project)
