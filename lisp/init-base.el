;; customized theme
;;(load-theme 'solarized t)

;;(set-frame-parameter nil 'background-mode 'dark)
;;;;(enable-theme 'solarized)
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
(custom-set-variables
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p t)
 '(sr-speedbar-max-width 20)
 '(sr-speedbar-width-x 10)
 ;; minibuffer窗口随显示内容改变
 '(resize-mini-windows t))
(setq speedbar-directory-unshown-regexp "^$")

;; 绑定快捷键
(global-set-key (kbd "M-s") 'sr-speedbar-toggle)
(global-set-key (kbd "M-r") 'sr-speedbar-refresh-toggle)

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

;;窗口编号，可以用M-1,M-2...切换
(window-numbering-mode 1)

(winner-mode t)

;;保存会话状态
(desktop-save-mode 1)

(global-visual-line-mode t)

;;(setenv "PATH" (shell-command-to-string "source ~/.bashrc; echo -n $PATH"))
;;(setq shell-file-name "bash")
;;(setq shell-command-switch "-c") ;; 设置bash模式，让emacs的bash可以读取~/.bashrc

(global-set-key (kbd "M-s") 'sr-speedbar-toggle)

(require 'dired+)

(helm-mode 1)

(add-hook 'after-init-hook 'global-company-mode)

;;自动保存
(require 'auto-save)            ;; 加载自动保存模块
(auto-save-enable)              ;; 开启自动保存功能
(setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;    indent/unindent region as a block using the tab key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
;; (setq my-tab-width 4)
;; (setq default-tab-width 4)

;; (defun indent-block()
;;   (shift-region my-tab-width)
;;   (setq deactivate-mark nil))

;; (defun unindent-block()
;;   (shift-region (- my-tab-width))
;;   (setq deactivate-mark nil))

;; (defun shift-region(numcols)
;; " my trick to expand the region to the beginning and end of the area selected
;;  much in the handy way I liked in the Dreamweaver editor."
;;   (if (< (point)(mark))
;;     (if (not(bolp))    (progn (beginning-of-line)(exchange-point-and-mark) (end-of-line)))
;;     (progn (end-of-line)(exchange-point-and-mark)(beginning-of-line)))
;;   (setq region-start (region-beginning))
;;   (setq region-finish (region-end))
;;   (save-excursion
;;     (if (< (point) (mark)) (exchange-point-and-mark))
;;     (let ((save-mark (mark)))
;;       (indent-rigidly region-start region-finish numcols))))

;; (defun indent-or-complete ()
;;   "Indent region selected as a block; if no selection present either indent according to mode,
;; or expand the word preceding point. "
;;   (interactive)
;;   (if  mark-active
;;       (indent-block)
;;     (if (looking-at "\\>")
;;   (hippie-expand nil)
;;       (insert "\t"))))

  ;; (defun indent-or-complete ()
  ;;   (interactive)
  ;;   (if (looking-at "\\_>")
  ;;       (company-complete-common)
  ;;     (indent-according-to-mode)))

;; (defun my-unindent()
;;   "Unindent line, or block if it's a region selected.
;; When pressing Shift+tab, erase words backward (one at a time) up to the beginning of line.
;; Now it correctly stops at the beginning of the line when the pointer is at the first char of an indented line. Before the command would (unconveniently)  kill all the white spaces, as well as the last word of the previous line."

;;   (interactive)
;;   (if mark-active
;;       (unindent-block)
;;     (progn
;;       (unless(bolp)
;;         (if (looking-back "^[ \t]*")
;;             (progn
;;               ;;"a" holds how many spaces are there to the beginning of the line
;;               (let ((a (length(buffer-substring-no-properties (point-at-bol) (point)))))
;;                 (progn
;;                   ;; delete backwards progressively in my-tab-width steps, but without going further of the beginning of line.
;;                   (if (> a my-tab-width)
;;                       (delete-backward-char my-tab-width)
;;                     (backward-delete-char a)))))
;;           ;; delete tab and spaces first, if at least 2 exist, before removing words
;;           (progn
;;             (if(looking-back "[ \t]\\{2,\\}")
;;                 (delete-horizontal-space)
;;               (backward-kill-word 1))))))))

;; (add-hook 'find-file-hooks (function (lambda ()
;;  (unless (eq major-mode 'org-mode)
;; (local-set-key (kbd "<tab>") 'indent-or-complete)))))

;; (if (not (eq  major-mode 'org-mode))
;;     (progn
;;       (define-key global-map "\t" 'indent-or-complete) ;; with this you have to force tab (C-q-tab) to insert a tab after a word
;;       (define-key global-map (kbd "<backtab>") 'my-unindent)))

;; ;; mac and pc users would like selecting text this way
;; (defun dave-shift-mouse-select (event)
;;  "Set the mark and then move point to the position clicked on with
;;  the mouse. This should be bound to a mouse click event type."
;;  (interactive "e")
;;  (mouse-minibuffer-check event)
;;  (if mark-active (exchange-point-and-mark))
;;  (set-mark-command nil)
;;  ;; Use event-end in case called from mouse-drag-region.
;;  ;; If EVENT is a click, event-end and event-start give same value.
;;  (posn-set-point (event-end event)))

;; ;; be aware that this overrides the function for picking a font. you can still call the command
;; ;; directly from the minibufer doing: "M-x mouse-set-font"
;; (define-key global-map [S-down-mouse-1] 'dave-shift-mouse-select)

;; ;; to use in into emacs for  unix I  needed this instead
;; ; define-key global-map [S-mouse-1] 'dave-shift-mouse-select)
