;; init.el

;; 把目录lisp/添加到搜索路径中去
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "el-get/el-get" user-emacs-directory))

(require 'init-utils)
(require 'init-font)

(setenv "LC_CTYPE" "zh_CN.utf-8")

;;----------------------------------------------------------------------------
;; ELPA
;;----------------------------------------------------------------------------
;;

;; (setq package-list '(treemacs))
;; ; fetch the list of packages available
;; (unless package-archive-contents
;;   (package-refresh-contents))

;; ; install the missing packages
;; (dolist (package package-list)
;;   (unless (package-installed-p package)
;;     (package-install package)))

;; (ensure-packages-install-missing my:packages)
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
                    (autoload 'R-mode "ess-site.el" "ESS" t)
                    (autoload 'r-mode "ess-site.el" "Major mode for editing R source." t)
                    (autoload 'R "ess-site" "Call 'R', the 'GNU S' system from the R Foundation.
Optional prefix (C-u) allows to set command line arguments, such as
--vsize.  This should be OS agnostic.
If you have certain command line arguments that should always be passed
to R, put them in the variable `inferior-R-args'." t)))
   (:name session
          :before (progn
                    (autoload 'session-initialize "session" nil t)
                    (autoload 'session-jump-to-last-change "session" nil t))
          :after (progn
                   (add-hook 'after-init-hook 'session-initialize)))
   (:name helm
          :features (helm-config))
   (:name company-mode
          :after (progn
                   (add-hook 'after-init-hook 'global-company-mode)))))

;; now set our own packages
(setq
 my:el-get-packages
 '(el-get			       	; el-get is self-hosting
   company-mode                         ; complete as you type with overlays
   use-package
   pos-tip
   ;; hide-comnt              ; hide/show comment codes.
   ;; popup
   smart-mode-line
   let-alist                            ; Easily let-bind values of an assoc-list by their names
   exec-path-from-shell
   ess                                  ; Emacs Speaks Statistics
   smex                                 ; a M-x enhancement for Emacs
   tabbar                               ; an emacs minor mode that displays a tab bar at the top, similar to the idea of web browser’s tabs
   dired+
   auctex
   auctex-latexmk
   ;;latex-extra
   ;;latex-preview-pane
   ;;polymode                             ; an emacs package that offers generic support for multiple major modes inside a single emacs buffer.
   undo-tree                            ; treats undo history as a branching tree of changes
   which-key
   company-math
   session
   ;; color-theme-solarized
   markdown-mode
   ;; flycheck
   helm
   ag
   pyenv
   window-purpose
   sr-speedbar
   yasnippet
   virtualenvwrapper
   ;; speedbar-extension
   ggtags                               ; Emacs frontend to GNU Global source code tagging system
   projectile                           ; project navigation and management library for emacs
   elpy                                 ; Python develope environment
   js2-mode                             ; Improved JavaScript editing mode for GNU Emacs
   pandoc-mode                          ; an Emacs mode for interacting with Pandoc
   web-mode
   company-web
   ;; company-tern
   company-auctex
   company-quickhelp
   ;; predictive
   window-numbering
   mic-paren))

;; add customized recipts
(add-to-list 'el-get-recipe-path (expand-file-name "recipes" user-emacs-directory))

;; Locally defined recipe
(el-get-bundle nvm)
(el-get-bundle web-beautify)
(el-get-bundle dumb-jump)
(el-get-bundle company-jedi :depends (jedi-core company-mode))
(el-get-bundle company-web :depends (web-completion-data company-mode))
(el-get-bundle ido-grid-mode)
(el-get-bundle treemacs)
(el-get-bundle polymode)
(el-get-bundle indium)
(el-get-bundle poly-R)
(el-get-bundle poly-markdown)
(el-get-bundle poly-org)
(el-get-bundle format-all)
(el-get-bundle flycheck)
(el-get-bundle spinner)
(el-get-bundle lsp-mode)
(el-get-bundle lsp-ui)
(el-get-bundle company-lsp)

;; install new packages and init already installed packages
(el-get 'sync my:el-get-packages)

;;(add-to-list 'Info-directory-list "")
(load (expand-file-name "lisp/loaddefs.el" user-emacs-directory) nil t t)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(let ((ts-init (current-time)))
  (setq missing-packages-list nil
        package-init-statistic nil)
  (try-require 'init-base t)
  (try-require 'init-cedet t)
  (try-require 'init-layout t)
  (try-require 'init-markdown t)
  (try-require 'init-org t)
  (try-require 'init-R t)
  (try-require 'init-python t)
  (try-require 'init-tabbar t)
  (try-require 'init-web t)
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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "f8cf128fa0ef7e61b5546d12bb8ea1584c80ac313db38867b6e774d1d38c73db" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(eldoc-echo-area-use-multiline-p t)
 '(eldoc-minor-mode-string " eldoc")
 '(eldoc-print-after-edit t)
 '(highlight-nonselected-windows t)
 '(ielm-dynamic-return nil)
 '(package-selected-packages (quote (indium poly-R polymode)))
 '(session-use-package t nil (session))
 '(tabbar-separator (quote (0.5))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-sedate-face ((t (:foreground "wheat"))))
 '(markdown-code-face ((t (:inherit fixed-pitch :background "gray25")))))

;; ;; 设置英文字体
;; (when (member "Monaco" (font-family-list))
;;   ;;(set-face-attribute 'default nil :font "Monaco" :height 11))
;;     (add-to-list 'initial-frame-alist '(font . "Monaco-11"))
;;     (add-to-list 'default-frame-alist '(font . "Monaco-11")))

;; ;; 设置中文字体
;; (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;   (set-fontset-font "fontset-default"
;;                     charset
;;                     (font-spec :family "WenQuanYi Micro Hei")))
