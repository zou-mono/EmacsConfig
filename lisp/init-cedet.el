(require 'cedet)
(require 'cedet-global)
(require 'semantic)

(add-hook 'speedbar-load-hook (lambda () (require 'semantic/sb)))

;; basic configuration
(semantic-mode 1)
(global-ede-mode 1)
(global-semanticdb-minor-mode 1)
(global-semantic-highlight-func-mode 1)
(global-semantic-mru-bookmark-mode 1)
(global-semantic-idle-completions-mode t)
;;(setq semantic-idle-scheduler-idle-time 3)

;;gnu global support
(add-hook 'python-mode-hook
   '(lambda ()
      (ggtags-mode 1)))

(add-hook 'js2-mode-hook
   '(lambda ()
      (ggtags-mode 1)))

(add-hook 'web-mode-hook
   '(lambda ()
      (ggtags-mode 1)))


(setq cedet-global-command "global") ; Change to path of global as needed
     (when (cedet-gnu-global-version-check t)  ; Is it ok?
       ;; Configurations for GNU Global and CEDET
       (semanticdb-enable-gnu-global-databases 'python-mode t)
       (semanticdb-enable-gnu-global-databases 'js2-mode t)
       (semanticdb-enable-gnu-global-databases 'web-mode t))

;;(setq gtags-suggested-key-mapping t)

;; key binding
(defun my-cedet-hook ()
  (local-set-key (kbd "C-c s b") 'semantic-mrub-switch-tags)
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  )

(add-hook 'js2-mode-hook 'my-cedet-hook)
(add-hook 'python-mode-hook 'my-cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my-cedet-hook)

;; (add-hook 'gtags-mode-hook
;;   '(lambda ()
;;         ; Local customization (overwrite key mapping)
;;         (define-key gtags-mode-map "\C-t" ')
;;         (define-key gtags-mode-map "\C-b" 'scroll-down)



