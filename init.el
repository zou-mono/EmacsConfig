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

;; (when (>= emacs-major-version 24)
;;   (require 'package)
;;   (add-to-list
;;    'package-archives
;;    '("melpa" . "http://melpa.org/packages/")
;;    t)
;;   (package-initialize))

;; set local recipes
(setq
 el-get-sources
 '((:name smex				; a better (ido like) M-x
	:after (progn
		 (setq smex-save-file "~/.emacs.d/.smex-items")
		 (global-set-key (kbd "M-x") 'smex)
		 (global-set-key (kbd "M-X") 'smex-major-mode-commands)))
   (:name ess
	:before (progn
		 (autoload 'R "ess-site.el" "ESS" t)))
   (:name session
	  :before (progn
		    (autoload 'session-initialize "session" nil t)
		    (autoload 'session-jump-to-last-change "session" nil t))
	  :after (progn
		   (add-hook 'after-init-hook 'session-initialize)))
   (:name helm
	:features (helm-config))))

;; now set our own packages
(setq
 my:el-get-packages
 '(el-get			       	; el-get is self-hosting
   org-mode
   let-alist                            ; Easily let-bind values of an assoc-list by their names
   ess                                  ; Emacs Speaks Statistics
   smex                                 ; a M-x enhancement for Emacs
   tabbar                               ; an emacs minor mode that displays a tab bar at the top, similar to the idea of web browser’s tabs
   dired+
   auctex
   session                              
   color-theme-solarized
   markdown-mode
   helm
   pyenv
   window-purpose
   sr-speedbar
   virtualenvwrapper
   ;;speedbar-extension
   ggtags                               ; Emacs frontend to GNU Global source code tagging system
   jedi                                 ; Python auto-completion for Emacs
   cedet                                ; Collection of Emacs Development Environment Tools
   ein                                  ; Emacs IPython Notebook
   js2-mode                             ; Improved JavaScript editing mode for GNU Emacs
   web-mode
   window-numbering	
   auto-complete))			; complete as you type with overlays

;; add customized recipts
(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")

;; Locally defined recipe
(el-get-bundle nvm)

;; install new packages and init already installed packages
(el-get 'sync my:el-get-packages)

;;(autoload 'gtags-mode "gtags" "" t)
(load "init-web") ;; base settings
(load "init-base") ;; base settings
(load "init-tabbar") ;; Tabbar settings
(load "init-layout") ;; layout settings
(load "init-cedet")
(load "init-R")  ;; r-mode settings
(load "init-org") ;; org-mode settings
(load "init-markdown") ;; markdown-mode settings
(load "init-Python") ;; Python-mode settings

