;; init.el
;; 把目录lisp/添加到搜索路径中去

(add-to-list 'load-path "~/.emacs.d/lisp") 
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; set local recipes
(setq
 el-get-sources
 '((:name smex				; a better (ido like) M-x
	:after (progn
		 (setq smex-save-file "~/.emacs.d/.smex-items")
		 (global-set-key (kbd "M-x") 'smex)
		 (global-set-key (kbd "M-X") 'smex-major-mode-commands)))
   (:name ESS
	:before (progn
		 (autoload 'R "ess-site.el" "ESS" t))
   (:name session
	:after (progn
	  (add-hook 'after-init-hook 'session-initialize)))
   (:name helm
	:features (helm-config)))))

;; now set our own packages
(setq
 my:el-get-packages
 '(el-get				; el-get is self-hosting
   let-alist
   ess                                  ; ESS
   smex
   tabbar
   session
   color-theme-solarized
   helm
   window-purpose
   sr-speedbar
   speedbar-extension
   window-numbering	
   auto-complete))			; complete as you type with overlays

;; add customized recipts
(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")

;; install new packages and init already installed packages
(el-get 'sync my:el-get-packages)

(helm-mode 1)

(load "init-base") ;; base settings
(load "init-tabbar") ;; Tabbar settings
(load "init-layout") ;; layout settings
(load "init-R")  ;; r-mode settings
(load "init-org") ;; org-mode settings

(desktop-save-mode 1) 
