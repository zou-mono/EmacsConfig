(require 'js2-mode)
(require 'web-mode)
(require 'nvm)

;; (autoload 'js2-mode "js2-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun do-nvm-use (version)

  (interactive "sVersion: ")

  (nvm-use version)

  ;; exec-path-from-shell is going to make a new login shell and get the value

  ;; from that. but nvm-use does setenv "PATH". so we want to make exec-path

  ;; respect the PATH in the Emacs process, not a new shell.

  ;;(exec-path-from-shell-copy-env "PATH")

  ;; need an exec-path-from-PATH defun.

  (exec-path-from-PATH))
