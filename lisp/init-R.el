(require 'ess-site)
;;(require 'ess-r-mode) 
(require 'poly-R)

;; (defun Rnw-mode ()
;;   (require 'ess-noweb)
;;   (ess-noweb-mode)
;;   (if (fboundp 'R-mode)
;;       (setq ess-noweb-default-code-mode 'R-mode)))

(setq polymode-display-output-file nil)

(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.r$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.Rd$" . Rd-mode))
(add-to-list 'auto-mode-alist '("\\.Snw$" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw$" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd$" . poly-markdown+r-mode))
(add-to-list 'auto-mode-alist '("\\.rapport$" . poly-rapport-mode))
(add-to-list 'auto-mode-alist '("\\.Rhtml$" . poly-html+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rbrew$" . poly-brew+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rcpp$" . poly-r+c++-mode))
(add-to-list 'auto-mode-alist '("\\.cppR$" . poly-c++r-mode))

(add-hook 'R-mode-hook
          (lambda ()
            (message "r-mode-hook la la la")
            ;; 取消输入"_"变为"<-"的设定
            (ess-toggle-underscore nil)
            (setq ess-swv-pdflatex-commands (quote ("xelatex" "texi2pdf" "pdflatex" "make")))
            (setq ess-R-font-lock-keywords
                  (quote
                   ((ess-R-fl-keyword:modifiers . t)
                    (ess-R-fl-keyword:fun-defs . t)
                    (ess-R-fl-keyword:keywords . t)
                    (ess-R-fl-keyword:assign-ops . t)
                    (ess-R-fl-keyword:constants . t)
                    (ess-fl-keyword:fun-calls . t)
                    (ess-fl-keyword:numbers . nil)
                    (ess-fl-keyword:operators . t)
                    (ess-fl-keyword:delimiters . t)
                    (ess-fl-keyword:= . t)
                    (ess-R-fl-keyword:F&T . t)
                    (ess-R-fl-keyword:%op% . t))))
            ))


;;;###autoload
(defun open-r()
  (interactive)
  (setq ess-ask-for-ess-directory nil)
  (setq ess-directory "~/Documents/R_Project/")
  (R)
  (perspective/R))
;; (purpose-mode)
;; (purpose-load-window-layout-file "~/.emacs.d/layouts/Rlayout.window-layout")
;; (purpose-load-frame-layout-file "~/.emacs.d/layouts/Rlayout.frame-layout"))

;; (setq ess-ask-about-transfile nil)
(global-set-key (kbd "C-x R") 'open-r)

(provide 'init-R)
