(require 'window-purpose)
(require 'ess-site)

(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.r$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.Rd$" . Rd-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw$" . ess-noweb-mode))

;; 设置Purpose
(add-to-list 'purpose-user-mode-purposes '(ess-mode . r))
(add-to-list 'purpose-user-mode-purposes '(inferior-ess-mode . r-repl))
(purpose-compile-user-configuration)

;; 取消输入"_"变为"<-"的设定
(ess-toggle-underscore nil)

;; 设置knitr的编译器为xelatex
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ess-swv-pdflatex-commands (quote ("xelatex" "texi2pdf" "pdflatex" "make"))))

'(ess-R-font-lock-keywords
  (quote
   ((ess-R-fl-keyword:modifiers . t)
    (ess-R-fl-keyword:fun-defs . t)
    (ess-R-fl-keyword:keywords . t)
    (ess-R-fl-keyword:assign-ops . t)
    (ess-R-fl-keyword:constants . t)
    (ess-fl-keyword:fun-calls . t)
    (ess-fl-keyword:numbers)
    (ess-fl-keyword:operators)
    (ess-fl-keyword:delimiters)
    (ess-fl-keyword:=)
    (ess-R-fl-keyword:F&T)
    (ess-R-fl-keyword:%op%))))

(defun open-r-perspective ()
  (interactive)
  (setq ess-ask-for-ess-directory nil)
  (setq ess-directory "~/Documents/R_Project/")
  (R)
  (purpose-mode)
  (purpose-load-window-layout-file "~/.emacs.d/layouts/Rlayout.window-layout")
  (purpose-load-frame-layout-file "~/.emacs.d/layouts/Rlayout.frame-layout")
)

;; (setq ess-ask-about-transfile nil)

(global-set-key (kbd "C-c r") 'open-r-perspective)
