;; init.el
(global-eldoc-mode -1)
;; 把目录lisp/添加到搜索路径中去
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-utils)

(add-to-list 'load-path (expand-file-name "el-get/el-get" user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(highlight-nonselected-windows t)
 '(ielm-dynamic-return nil)
 '(resize-mini-windows t)
 '(tabbar-separator (quote (0.5))))

;;----------------------------------------------------------------------------
;; ELPA
;;----------------------------------------------------------------------------
;; (when (>= emacs-major-version 24)
;;   (require 'package)
;;   ;; (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
;;   (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;   ;; (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
;; )
;; (package-initialize)

;; (setq package-list '(treemacs))
;; ; fetch the list of packages available 
;; (unless package-archive-contents
;;   (package-refresh-contents))

;; ; install the missing packages
;; (dolist (package package-list)
;;   (unless (package-installed-p package)
;;     (package-install package)))

;;----------------------------------------------------------------------------
;; el-get
;;----------------------------------------------------------------------------
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
                   (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory))
                   (global-set-key (kbd "M-x") 'smex)
                   (global-set-key (kbd "M-X") 'smex-major-mode-commands)))
   (:name ess
          :before (progn
                    (autoload 'R-mode "ess-site.el" "ESS" t)))
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
   ag
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
   pandoc-mode                          ; an Emacs mode for interacting with Pandoc
   web-mode
   company-web
   company-tern
   company-auctex
   ;; predictive
   window-numbering))		

;; add customized recipts
(add-to-list 'el-get-recipe-path (expand-file-name "recipes" user-emacs-directory))

;; Locally defined recipe
(el-get-bundle nvm)
(el-get-bundle web-beautify)
;; (el-get-bundle dumb-jump)
(el-get-bundle company-jedi :depends (jedi-core company-mode))
(el-get-bundle company-web :depends (web-completion-data company-mode))

;; install new packages and init already installed packages
(el-get 'sync my:el-get-packages)
(add-to-list 'Info-directory-list "")

(load (expand-file-name "lisp/loaddefs.el" user-emacs-directory) nil t t)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(let ((ts-init (current-time)))
  (setq missing-packages-list nil
        package-init-statistic nil)
  (try-require 'init-R t)
  (try-require 'init-base t)
  (try-require 'init-cedet t)
  (try-require 'init-layout t)
  (try-require 'init-markdown t)
  (try-require 'init-org t)
  (try-require 'init-python t)
  (try-require 'init-tabbar t)
  (try-require 'init-tex t)
  ;; Report package statistics.

  (message "\n\nShowing package initialization statistics:\n%s"
           (mapconcat (lambda (x)
                        (format "package %s cost %.2f seconds" (car x) (cdr x)))
                      (reverse package-init-statistic)
                      "\n"
                      ))
  (message "Finished startup in %.2f seconds,  %d packages missing%s\n\n"
           (float-time (time-since ts-init)) (length missing-packages-list)
           (if missing-packages-list
               ". Refer to `missing-packages-list` for missing packages."
             ".")))

;; (require 'init-base) ;; base settings
;; (require 'init-tabbar)
;; (require 'init-layout) ;; layout settings
;; (require 'init-cedet)
;; (require 'init-web) ;; base settings
;; (require 'init-R)  ;; r-mode settings
;; (require 'init-org) ;; org-mode settings
;; (require 'init-markdown) ;; markdown-mode settings
;; (require 'init-python) ;; Python-mode settings
;; (require 'init-tex)  ;;auctex-mode settings

(setq custom-safe-themes t)
(add-to-list 'custom-theme-load-path (expand-file-name "themes" user-emacs-directory))
(load-theme 'dracula t)
(sml/setup) ;; smart-mode-line

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-sedate-face ((t (:foreground "wheat"))))
 '(markdown-code-face ((t (:inherit fixed-pitch :background "gray25")))))
