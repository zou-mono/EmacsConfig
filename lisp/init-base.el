(require 'dired+)
;;(global-eldoc-mode -1)

;; 鼠标不要闪烁
(blink-cursor-mode -1)
;;鼠标滚轮，默认的滚动太快，这里改为3行
(defun up-slightly () (interactive) (scroll-up 3))
(defun down-slightly () (interactive) (scroll-down 3))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)
;;把鼠标变为竖线
(setq-default cursor-type 'bar)

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
(column-number-mode 1)			; column numbers in the mode line
(tool-bar-mode -1)                      ; no tool bar with icons

;; global-linum-mode在某些mode不启用,否则速度太慢,例如docview-mode
(global-linum-mode)			; have line numbers and
(defcustom linum-disabled-modes-list '(dired-mode doc-view-mode treemacs-mode Custom-mode)
  "* List of modes disabled when global linum mode is on"
  :type '(repeat (sexp :tag "Major mode"))
  :tag " Major modes where linum is disabled: "
  :group 'linum)
(defun linum-on ()
  "* When linum is running globally, disable line number in modes defined in `linum-disabled-modes-list'. Changed by linum-off. Also turns off numbering in starred modes like *scratch*"
  (unless (or (minibufferp)
              (member major-mode linum-disabled-modes-list))
    (linum-mode 1)))

;; copy/paste with C-c and C-v and C-x, check out C-RET too
(cua-mode)

;; 关闭滚动条
(scroll-bar-mode nil)
(set-scroll-bar-mode nil)

;; 不需要移动光标就滚屏
(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1))
(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1))
(global-set-key [(control down)] 'gcm-scroll-down)
(global-set-key [(control up)]   'gcm-scroll-up)

;; 非持久性标记模式,高亮显示要拷贝的区域
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
(mouse-avoidance-mode 'animate)  

;; whenever an external process changes a file underneath emacs, and there
;; was no unsaved changes in the corresponding buffer, just revert its
;; content to reflect what's on-disk.
(global-auto-revert-mode 1)

;; 语法高亮
(global-font-lock-mode t)

;; 圆括号配对提示
(show-paren-mode 1)
(paren-activate) ;; mic-paren
;; (defadvice show-paren-function
;;     (after show-matching-paren-offscreen activate)
;;   "If the matching paren is offscreen, show the matching line in the
;;         echo area. Has no effect if the character before point is not of
;;         the syntax class ')'."
;;   (interactive)
;;   (let* ((cb (char-before (point)))
;;          (matching-text (and cb
;;                              (char-equal (char-syntax cb) ?\) )
;;                              (blink-matching-open))))
;;     (when matching-text (message matching-text))))

;; 窗口编号，可以用M-1,M-2...切换
;; (window-numbering-mode 1)

;; 可以用c-x left,c-x right在同一个frame中切换buffer
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
(add-to-list 'desktop-modes-not-to-save 'doc-view-mode)

(global-visual-line-mode t)

;; yasnippet
(yas-global-mode 1)
;;(setenv "PATH" (shell-command-to-string "source ~/.bashrc; echo -n $PATH"))
;;(setq shell-file-name "bash")
;;(setq shell-command-switch "-c") ;; 设置bash模式，让emacs的bash可以读取~/.bashrc

;; comapany-quickhelp
(company-quickhelp-mode)
(setq company-quickhelp-delay nil)
(eval-after-load 'company
  '(define-key company-active-map (kbd "C-h") #'company-quickhelp-manual-begin))
(setq company-quickhelp-color-background "black")
(setq company-quickhelp-color-foreground "cyan")

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

(setq custom-safe-themes t)
(add-to-list 'custom-theme-load-path (expand-file-name "themes" user-emacs-directory))
(load-theme 'dracula t)

;;(sml/setup) ;; smart-mode-line

;; ido-mode
(ido-mode t)
(ido-everywhere)
(setq ido-enable-flex-matching t)  ;; show any name that has the chars you typed
(ido-grid-mode)
(put 'dired-do-copy   'ido nil) ; use ido there
(put 'dired-do-rename 'ido nil) ; 
(add-hook 'dired-mode-hook
              '(lambda ()
                 (set (make-local-variable 'ido-enable-replace-completing-read) nil)))

(setq ido-show-dot-for-dired t)

;; winum
;; (winum-set-keymap-prefix (kbd "C-x w"))
(setq winum-keymap
    (let ((map (make-sparse-keymap)))
      (define-key map (kbd "C-x C-w") 'winum-select-window-by-number)
      (define-key map (kbd "M-0") 'winum-select-window-0-or-10)
      (define-key map (kbd "M-1") 'winum-select-window-1)
      (define-key map (kbd "M-2") 'winum-select-window-2)
      (define-key map (kbd "M-3") 'winum-select-window-3)
      (define-key map (kbd "M-4") 'winum-select-window-4)
      (define-key map (kbd "M-5") 'winum-select-window-5)
      (define-key map (kbd "M-6") 'winum-select-window-6)
      (define-key map (kbd "M-7") 'winum-select-window-7)
      (define-key map (kbd "M-8") 'winum-select-window-8)
      (define-key map (kbd "M-9") 'winum-select-window-9)      
      map))

(require 'winum)
(winum-mode)

(provide 'init-base)

;;; init-base ends here
