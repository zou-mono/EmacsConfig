(require 'ess-site) 
;; (require 'poly-R)

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

(eval-after-load "ess-site"             
  '(progn
     (ess-toggle-underscore nil)  ;; 取消输入"_"变为"<-"的设定)
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
             (ess-R-fl-keyword:%op% . t))))))

;; (add-hook 'R-mode-hook      
;;          (lambda ()
;;            (message "r-mode la la la"))
;; )

;;;###autoload
(defun open-r()
  (interactive)
  (setq ess-ask-for-ess-directory nil)
  (setq ess-directory "~/Documents/R_Project/")
  (R)
  (perspective/R))

(defun my-ess-settings ()
   (setq ess-indent-with-fancy-comments nil))
(add-hook 'ess-mode-hook #'my-ess-settings)
;;(global-set-key (kbd "C-x R") 'open-r)

(provide 'init-R)
