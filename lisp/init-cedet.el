;; (require 'cedet) ;; 已经集成到emacs中，不需要独立安装
(require 'cedet-global)
(require 'lsp-mode)
;; emacs自带的cedet无法识别lisp-mode，所以使用独立安装的
;;(load-file (expand-file-name "el-get/cedet/cedet-devel-load.el" user-emacs-directory))
;; (require 'semantic)

;; (add-hook 'speedbar-load-hook (lambda () (require 'semantic/sb)))
(require 'company-lsp)
(require 'lsp-ui)

;;; Code:
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(push 'company-lsp company-backends)
(setq lsp-prefer-flymake nil)

(global-flycheck-mode)

(setenv "GTAGSLABEL" "pygments")
(setenv "GTAGSCONF" "/opt/global/share/gtags/gtags.conf")

;; basic configuration
(semantic-mode 1)
(global-ede-mode 1)
(global-semanticdb-minor-mode 1)
(global-semantic-highlight-func-mode 1)
(global-semantic-mru-bookmark-mode 1)
;; (global-semantic-idle-completions-mode t) ;;光标放在单词后面会触发补全联想
;;(global-semantic-decoration-mode 1)
;;(global-semantic-stickyfunc-mode 1)
;;(global-semantic-idle-breadcrumbs-mode 1)
(global-semantic-mru-bookmark-mode 1)
(setq semantic-idle-scheduler-idle-time 3)

(add-hook 'emacs-lisp-mode-hook 'ggtags-mode)
(add-hook 'python-mode-hook 'ggtags-mode)
;;(add-hook 'js2-mode-hook 'ggtags-mode)
;;(add-hook 'web-mode-hook 'ggtags-mode)
(add-hook 'java-mode-hook 'ggtags-mode)
(add-hook 'R-mode-hook 'ggtags-mode)  ; ggtags会自动打开eldoc和ess有冲突

;;gnu global support
(setq cedet-global-command "global") ; Change to path of global as needed
(when (cedet-gnu-global-version-check t)  ; Is it ok?
  ;; Configurations for GNU Global and CEDET
  (semanticdb-enable-gnu-global-databases 'python-mode)
  ;;(semanticdb-enable-gnu-global-databases 'js2-mode)
  ;;(semanticdb-enable-gnu-global-databases 'web-mode)
  (semanticdb-enable-gnu-global-databases 'emacs-lisp-mode)
  (semanticdb-enable-gnu-global-databases 'java-mode)
  (semanticdb-enable-gnu-global-databases 'R-mode))

;;(setq gtags-suggested-key-mapping t)

;; key binding
(defun my-cedet-hook ()
  (lambda()
    (setq flymake-mode nil)
    (local-set-key (kbd "C-c s b") 'semantic-mrub-switch-tags)))

(add-hook 'js2-mode-hook 'my-cedet-hook)
(add-hook 'python-mode-hook 'my-cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my-cedet-hook)

;; (add-hook 'gtags-mode-hook
;;   '(lambda ()
;;         ; Local customization (overwrite key mapping)
;;         (define-key gtags-mode-map "\C-t" ')
;;         (define-key gtags-mode-map "\C-b" 'scroll-down)

(provide 'init-cedet)
