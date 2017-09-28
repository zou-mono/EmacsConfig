;; init.el
;; 把目录lisp/添加到搜索路径中去

(add-to-list 'load-path (concat emacs-conf-path "lisp")) 
(add-to-list 'load-path (concat emacs-conf-path "el-get/el-get"))

;; ELPA
(when (>= emacs-major-version 24)
  (require 'package)
  ;; (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  ;; (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
)
(package-initialize)

;; (setq package-list '(treemacs))
;; ; fetch the list of packages available 
;; (unless package-archive-contents
;;   (package-refresh-contents))

;; ; install the missing packages
;; (dolist (package package-list)
;;   (unless (package-installed-p package)
;;     (package-install package)))

;; el-get
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
		 (setq smex-save-file (concat emacs-conf-path  ".smex-items"))
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
   company-mode                         ; complete as you type with overlays
   use-package
   ;; popup
   smart-mode-line
   let-alist                            ; Easily let-bind values of an assoc-list by their names
   exec-path-from-shell
   ess                                  ; Emacs Speaks Statistics
   smex                                 ; a M-x enhancement for Emacs
   tabbar                               ; an emacs minor mode that displays a tab bar at the top, similar to the idea of web browser’s tabs
   dired+
   auctex
   polymode                             ; an emacs package that offers generic support for multiple major modes inside a single emacs buffer.
   undo-tree                            ; treats undo history as a branching tree of changes
   which-key
   company-math
   session                              
   ;; color-theme-solarized
   markdown-mode
   helm
   pyenv
   window-purpose
   sr-speedbar
   yasnippet
   virtualenvwrapper
   treemacs
   ;; speedbar-extension
   ggtags                               ; Emacs frontend to GNU Global source code tagging system
   projectile                           ; project navigation and management library for emacs
   elpy                                 ; Python develope environment
   js2-mode                             ; Improved JavaScript editing mode for GNU Emacs
   web-mode
   company-web
   company-tern
   window-numbering))		

;; add customized recipts
(add-to-list 'el-get-recipe-path (concat emacs-conf-path "recipes"))

;; Locally defined recipe
(el-get-bundle nvm)
(el-get-bundle web-beautify)
;; (el-get-bundle dumb-jump)
(el-get-bundle company-jedi :depends (jedi-core company-mode))
(el-get-bundle company-web :depends (web-completion-data company-mode))

;; install new packages and init already installed packages
(el-get 'sync my:el-get-packages)
(add-to-list 'Info-directory-list "")

;;(autoload 'gtags-mode "gtags" "" t)
(load "init-cedet")
(load "init-web") ;; base settings
(load "init-base") ;; base settings
(load "init-tabbar") ;; Tabbar settings
(load "init-layout") ;; layout settings
(load "init-R")  ;; r-mode settings
(load "init-org") ;; org-mode settings
(load "init-markdown") ;; markdown-mode settings
(load "init-Python") ;; Python-mode settings
(load "init-tex")  ;;auctex-mode settings

(setq custom-safe-themes t)
(add-to-list 'custom-theme-load-path (concat emacs-conf-path "themes"))
(load-theme 'dracula t)
(sml/setup)
