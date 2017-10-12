(require 'window-purpose)
(purpose-mode)

(unless (boundp 'perspective-map)
  (define-prefix-command 'perspective-map))
(global-set-key (kbd "C-p") perspective-map)

;; 设置Purpose
;; R
(add-to-list 'purpose-user-mode-purposes '(ess-mode . r))
(add-to-list 'purpose-user-mode-purposes '(inferior-ess-mode . r-repl))
;; lisp
(add-to-list 'purpose-user-mode-purposes '(lisp-interaction-mode . lisp-interaction))
(add-to-list 'purpose-user-mode-purposes '(emacs-lisp-mode . lisp))
;; python
(add-to-list 'purpose-user-mode-purposes '(python-mode . py))
(add-to-list 'purpose-user-mode-purposes '(inferior-python-mode . py-repl))
;; latex
(add-to-list 'purpose-user-mode-purposes '(tex-mode . latex-mode))
(add-to-list 'purpose-user-mode-purposes '(TeX-output-mode . tex-output))
(purpose-compile-user-configuration)

(defun perspective/R()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file (expand-file-name "layouts/Rlayout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/Rlayout.frame-layout" user-emacs-directory)))

(defun perspective/lisp()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file (expand-file-name "layouts/emacs-lisp-layout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/emacs-lisp-layout.frame-layout" user-emacs-directory)))

(defun perspective/python()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file (expand-file-name "layouts/python-layout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/python-layout.frame-layout" user-emacs-directory)))

(defun perspective/tex()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file (expand-file-name "layouts/tex-layout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/tex-layout.frame-layout" user-emacs-directory)))

(define-key perspective-map (kbd "R") 'perspective/R)
(define-key perspective-map (kbd "l") 'perspective/lisp)
(define-key perspective-map (kbd "p") 'perspective/python)
(define-key perspective-map (kbd "t") 'perspective/tex)

(provide 'init-layout)



