;; customized theme
;;(load-theme 'solarized t)

;;(set-frame-parameter nil 'background-mode 'dark)
;;;;(enable-theme 'solarized)
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
                  charset (font-spec :family "WenQuanYi Micro Hei Mono"))

;; on to the visual settings
(setq inhibit-splash-screen t)		; no splash screen, thanks
(global-linum-mode 1)			; have line numbers and
(column-number-mode 1)			; column numbers in the mode line

(tool-bar-mode -1)                      ; no tool bar with icons

;; copy/paste with C-c and C-v and C-x, check out C-RET too
(cua-mode)

(scroll-bar-mode nil)1
(set-scroll-bar-mode nil)
(transient-mark-mode t)  

;;tree file browser
(autoload 'speedbar-extension "speedbar-extension.el" "speed-extension" t)
(custom-set-variables
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p t)
 '(sr-speedbar-max-width 20)
 '(sr-speedbar-width-x 10))
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
 
(show-paren-mode 1)

(window-numbering-mode 1)

(winner-mode t)

(desktop-save-mode 1)

(global-visual-line-mode t)

(setq shell-command-switch "-ic") ;; 设置bash为交互模式，让emacs的bash可以读取~/.bashrc


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sr-speedbar-max-width 20)
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p)
 '(sr-speedbar-width-x 10)
 '(tabbar-separator (quote (0.5))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "M-s") 'sr-speedbar-toggle)

(require 'dired+)

(helm-mode 1)


