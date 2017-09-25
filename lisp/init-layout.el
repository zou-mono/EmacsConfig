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
(purpose-compile-user-configuration)

(defun perspective/R()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file (concat emacs-conf-path "layouts/Rlayout.window-layout"))
  (purpose-load-frame-layout-file (concat emacs-conf-path "layouts/Rlayout.frame-layout")))

(defun perspective/lisp()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file (concat emacs-conf-path "layouts/emacs-lisp-layout.window-layout"))
  (purpose-load-frame-layout-file (concat emacs-conf-path "layouts/emacs-lisp-layout.frame-layout")))

(defun perspective/python()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file (concat emacs-conf-path "layouts/python-layout.window-layout"))
  (purpose-load-frame-layout-file (concat emacs-conf-path "layouts/python-layout.frame-layout")))


(define-key perspective-map (kbd "R") 'perspective/R)
(define-key perspective-map (kbd "l") 'perspective/lisp)
(define-key perspective-map (kbd "p") 'perspective/python)




