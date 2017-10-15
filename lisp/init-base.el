(set-fontset-font (frame-parameter nil 'font)
                   'han (font-spec :family "WenQuanYi Micro Hei Mono"))

;; undo-tree
(global-undo-tree-mode)
;; make ctrl-z undo
(global-set-key (kbd "C-z") 'undo)
;; make ctrl-Z redo
(defalias 'redo 'undo-tree-redo)`
(global-set-key (kbd "C-S-z") 'redo)

;; which-key
(which-key-mode)

;; 设置emamcs和系统shell使用的环境变量一致
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; on to the visual settings
(setq inhibit-splash-screen t)		; no splash screen, thanks
(global-linum-mode 1)			; have line numbers and
(column-number-mode 1)			; column numbers in the mode line

(tool-bar-mode -1)                      ; no tool bar with icons

;; copy/paste with C-c and C-v and C-x, check out C-RET too
(cua-mode)

;; 关闭滚动条
(scroll-bar-mode nil)
(set-scroll-bar-mode nil)

;; 非持久性标记模式
(transient-mark-mode t)  

;;tree file browser
;;(autoload 'speedbar-extension "speedbar-extension.el" "speed-extension" t)
;; (custom-set-variables
;;  '(sr-speedbar-right-side nil)
;;  '(sr-speedbar-skip-other-window-p t)
;;  '(sr-speedbar-max-width 20)
;;  '(sr-speedbar-width-x 10)
;;  ;; minibuffer窗口随显示内容改变
;;  '(resize-mini-windows t))
;; (setq speedbar-directory-unshown-regexp "^$")

;; 以 y/n代表 yes/no  
(fset 'yes-or-no-p 'y-or-n-p)

;;可以显示图片  
(auto-image-file-mode t)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。  
(setq mouse-avoidance-mode 'animate)  

;; whenever an external process changes a file underneath emacs, and there
;; was no unsaved changes in the corresponding buffer, just revert its
;; content to reflect what's on-disk.
(global-auto-revert-mode 1)

;;语法高亮
(global-font-lock-mode t)

;;圆括号配对提示
(show-paren-mode 1)
(setq show-paren-delay 0)

;;窗口编号，可以用M-1,M-2...切换
(window-numbering-mode 1)

(winner-mode t)

;;保存会话状态
(desktop-save-mode 1)
(setq desktop-buffers-not-to-save
        (concat "\\("
                "^nn\\.a[0-9]+\\|\\.log\\|(ftp)\\|^tags\\|^TAGS"
                "\\|\\.emacs.*\\|\\.diary\\|\\.newsrc-dribble\\|\\.bbdb"
	        "\\)$"))
(add-to-list 'desktop-modes-not-to-save 'dired-mode)
(add-to-list 'desktop-modes-not-to-save 'Info-mode)
(add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
(add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
(add-to-list 'desktop-modes-not-to-save 'treemacs-mode)

(global-visual-line-mode t)

;; yasnippet
(yas-global-mode 1)
;;(setenv "PATH" (shell-command-to-string "source ~/.bashrc; echo -n $PATH"))
;;(setq shell-file-name "bash")
;;(setq shell-command-switch "-c") ;; 设置bash模式，让emacs的bash可以读取~/.bashrc

(require 'dired+)

;; (add-hook 'after-init-hook 'helm-mode)
;; (add-hook 'after-init-hook
;;           (lambda ()
;;             (when (memq window-system '(mac ns x))
;;              (exec-path-from-shell-initialize))))

;;自动保存
(require 'auto-save)            ;; 加载自动保存模块
(auto-save-enable)              ;; 开启自动保存功能
(setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;    indent/unindent region as a block using the tab key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

(provide 'init-base)
