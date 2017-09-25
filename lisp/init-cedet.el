;; (require 'cedet) ;; 已经集成到emacs中，不需要独立安装
;; (require 'cedet-global)
;; emacs自带的cedet无法识别lisp-mode，所以使用独立安装的
(load-file (concat emacs-conf-path "el-get/cedet/cedet-devel-load.el")) 
(require 'semantic)

(add-hook 'speedbar-load-hook (lambda () (require 'semantic/sb)))

;; basic configuration
(semantic-mode 1)
(global-ede-mode 1)
(global-semanticdb-minor-mode 1)
(global-semantic-highlight-func-mode 1)
(global-semantic-mru-bookmark-mode 1)
(global-semantic-idle-completions-mode t)
;;(global-semantic-decoration-mode 1)
;;(global-semantic-stickyfunc-mode 1)
;;(global-semantic-idle-breadcrumbs-mode 1)
(global-semantic-mru-bookmark-mode 1)
;;(setq semantic-idle-scheduler-idle-time 3)

;;gnu global support
(add-hook 'emacs-lisp-mode-hook 'ggtags-mode)
(add-hook 'python-mode-hook 'ggtags-mode)
(add-hook 'js2-mode-hook 'ggtags-mode)
(add-hook 'web-mode-hook 'ggtags-mode)
(add-hook 'java-mode-hook 'ggtags-mode)
(add-hook 'R-mode-hook 'ggtags-mode)

(setq cedet-global-command "global") ; Change to path of global as needed
     (when (cedet-gnu-global-version-check t)  ; Is it ok?
       ;; Configurations for GNU Global and CEDET
       (semanticdb-enable-gnu-global-databases 'python-mode)
       (semanticdb-enable-gnu-global-databases 'js2-mode)
       (semanticdb-enable-gnu-global-databases 'web-mode)
       (semanticdb-enable-gnu-global-databases 'emacs-lisp-mode)
       (semanticdb-enable-gnu-global-databases 'java-mode)
       (semanticdb-enable-gnu-global-databases 'R-mode))

;;(setq gtags-suggested-key-mapping t)

;; key binding
(defun my-cedet-hook ()
  (local-set-key (kbd "C-c s b") 'semantic-mrub-switch-tags)
  (local-set-key "\C-cj" 'semantic-ia-fast-jump))

(add-hook 'js2-mode-hook 'my-cedet-hook)
(add-hook 'python-mode-hook 'my-cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my-cedet-hook)

;; (dumb-jump-mode)
;;(setq dumb-jump-selector 'helm)

;; (add-hook 'gtags-mode-hook
;;   '(lambda ()
;;         ; Local customization (overwrite key mapping)
;;         (define-key gtags-mode-map "\C-t" ')
;;         (define-key gtags-mode-map "\C-b" 'scroll-down)



