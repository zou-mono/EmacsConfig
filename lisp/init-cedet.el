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
  (local-set-key (kbd "C-c s b") 'semantic-mrub-switch-tags))

;;(add-hook 'js2-mode-hook 'my-cedet-hook)
(add-hook 'python-mode-hook 'my-cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my-cedet-hook)

;; (add-hook 'gtags-mode-hook
;;   '(lambda ()
;;         ; Local customization (overwrite key mapping)
;;         (define-key gtags-mode-map "\C-t" ')
;;         (define-key gtags-mode-map "\C-b" 'scroll-down)

;; treemacs
(setq treemacs-follow-after-init          t
          treemacs-width                      35
          treemacs-indentation                2
          treemacs-git-integration            t
          treemacs-collapse-dirs              3
          treemacs-silent-refresh             nil
          treemacs-change-root-without-asking nil
          treemacs-sorting                    'alphabetic-desc
          treemacs-show-hidden-files          t
          treemacs-never-persist              nil
          treemacs-is-never-other-window      nil
          treemacs-goto-tag-strategy          'refetch-index)
(setq treemacs-follow-mode t)
(setq treemacs-filewatch-mode t)
;; (setq treemacs-header-function 'treemacs-projectile-create-header)
(global-unset-key (kbd "C-t"))
(unless (boundp 'treemacs-map)
  (define-prefix-command 'treemacs-map))
(global-set-key (kbd "C-t") treemacs-map)
(define-key treemacs-map (kbd "t") 'treemacs-toggle)
(define-key treemacs-map (kbd "T") 'treemacs)
(define-key treemacs-map (kbd "f") 'treemacs-find-file)
(define-key treemacs-map (kbd "p") 'treemacs-projectile-toggle)
(define-key treemacs-map (kbd "P") 'treemacs-projectile)

(provide 'init-cedet)

