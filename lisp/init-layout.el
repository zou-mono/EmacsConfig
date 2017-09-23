(require 'window-purpose)
(purpose-mode)

(unless (boundp 'perspective-map)
  (define-prefix-command 'perspective-map))
(global-set-key (kbd "C-p") perspective-map)

;; 设置Purpose
(add-to-list 'purpose-user-mode-purposes '(ess-mode . r))
(add-to-list 'purpose-user-mode-purposes '(inferior-ess-mode . r-repl))
(add-to-list 'purpose-user-mode-purposes '(lisp-interaction-mode . lisp-interaction))
(add-to-list 'purpose-user-mode-purposes '(emacs-lisp-mode . lisp))
(purpose-compile-user-configuration)

(defun perspective-R()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file "~/.emacs.d/layouts/Rlayout.window-layout")
  (purpose-load-frame-layout-file "~/.emacs.d/layouts/Rlayout.frame-layout"))

(defun perspective-lisp()
  (interactive)
  (purpose-mode)
  (purpose-load-window-layout-file "~/.emacs.d/layouts/emacs-lisp-layout.window-layout")
  (purpose-load-frame-layout-file "~/.emacs.d/layouts/emacs-lisp-layout.frame-layout"))


(define-key perspective-map (kbd "R") 'perspective-R)
(define-key perspective-map (kbd "l") 'perspective-lisp)





