(require 'window-purpose)
(purpose-mode)

(unless (boundp 'perspective-map)
  (define-prefix-command 'perspective-map))
(global-set-key (kbd "C-p") perspective-map)


;;;###autoload
(defun perspective/R()
  (interactive)
  (purpose-mode)
  ;; R
  (add-to-list 'purpose-user-mode-purposes '(ess-mode . r))
  (add-to-list 'purpose-user-mode-purposes '(inferior-ess-mode . r-repl))
  (purpose-compile-user-configuration)

  (purpose-load-window-layout-file (expand-file-name "layouts/R-layout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/R-layout.frame-layout" user-emacs-directory)))

;;;###autoload
(defun perspective/lisp()
  (interactive)
  
  (purpose-mode)
  ;; lisp
  (add-to-list 'purpose-user-mode-purposes '(lisp-interaction-mode . lisp-interaction))
  (add-to-list 'purpose-user-mode-purposes '(emacs-lisp-mode . lisp))
  (purpose-compile-user-configuration)

  (purpose-load-window-layout-file (expand-file-name "layouts/emacs-lisp-layout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/emacs-lisp-layout.frame-layout" user-emacs-directory)))

;;;###autoload
(defun perspective/python()
  (interactive)
  (purpose-mode)
  ;; python
  (add-to-list 'purpose-user-mode-purposes '(python-mode . py))
  (add-to-list 'purpose-user-mode-purposes '(inferior-python-mode . py-repl))
  (purpose-compile-user-configuration)

  (purpose-load-window-layout-file (expand-file-name "layouts/python-layout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/python-layout.frame-layout" user-emacs-directory)))

;;;###autoload
(defun perspective/tex()
  (interactive)
  (purpose-mode)
  ;; latex
  (add-to-list 'purpose-user-mode-purposes '(tex-mode . latex-mode))
  (add-to-list 'purpose-user-mode-purposes '(TeX-output-mode . tex-output))
  (purpose-compile-user-configuration)
  
  (purpose-load-window-layout-file (expand-file-name "layouts/tex-layout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/tex-layout.frame-layout" user-emacs-directory)))

;;;###autoload
(defun perspective/web()
  (interactive)
  (purpose-mode)
  ;; R
  (add-to-list 'purpose-user-mode-purposes '(js2-mode . web))
  (add-to-list 'purpose-user-mode-purposes '(web-mode . web))
  (add-to-list 'purpose-user-mode-purposes '(sgml-mode . web))
  (add-to-list 'purpose-user-mode-purposes '(css-mode . web))
  (add-to-list 'purpose-user-mode-purposes '(indium-repl-mode . js-repl))
  (purpose-compile-user-configuration)

  (purpose-load-window-layout-file (expand-file-name "layouts/web-layout.window-layout" user-emacs-directory))
  (purpose-load-frame-layout-file (expand-file-name "layouts/web-layout.frame-layout" user-emacs-directory)))

(define-key perspective-map (kbd "R") 'perspective/R)
(define-key perspective-map (kbd "l") 'perspective/lisp)
(define-key perspective-map (kbd "p") 'perspective/python)
(define-key perspective-map (kbd "t") 'perspective/tex)
(define-key perspective-map (kbd "w") 'perspective/web)

(provide 'init-layout)



