(require 'js2-mode)
(require 'web-mode)
(require 'nvm)
(require 'company-web-html)                          ; load company mode html backend
;; and/or
(require 'company-web-jade)                          ; load company mode jade backend
(require 'company-web-slim)                          ; load company mode slim backend
;;(require 'company-tern)
(require 'indium)
(require 'lsp-ui)
(require 'web-beautify)
(require 'typescript-mode)

;;; Code:
(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection '("typescript-language-server" "--stdio"))
                  :major-modes '(typescript-mode js-mode js2-mode rjsx-mode)
                  :server-id 'ts_ls))

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts?\\'" . typescript-mode))

;; re-format web files
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))
(eval-after-load 'sgml-mode
  '(define-key web-mode-map (kbd "C-c b") 'web-beautify-html))
(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

;; auto-completion for html and css
(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property))
    ("html" . (ac-source-words-in-buffer ac-source-abbrev))))

(defun my-web-mode-hook ()
  "Hook for `web-mode js2-mode'."
  (eval-after-load 'company
    (lambda()
       (setq ggtags-mode nil)
       (add-to-list 'company-backends 'company-web-html)
       (define-key web-mode-map (kbd "C-'") 'company-web-html)))
  (eval-after-load 'lsp
    (lambda()
       (define-key lsp-ui-mode-map (kbd "M-.") 'lsp-ui-peek-find-definitions)
       (define-key lsp-ui-mode-map (kbd "M-?") 'lsp-ui-peek-find-references))))

(add-hook 'web-mode-hook #'lsp)
(add-hook 'web-mode-hook 'flycheck-mode)
(add-hook 'web-mode-hook 'my-web-mode-hook)
;;(add-hook 'js2-mode-hook 'company-tern)
;; (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-hook 'typescript-mode-hook #'lsp)
(add-hook 'js2-mode-hook #'lsp)
(add-hook 'js2-mode-hook 'flycheck-mode)
(add-hook 'js2-mode-hook #'indium-interaction-mode)
(add-hook 'js2-mode-hook 'my-web-mode-hook)

;; Enable JavaScript completion between <script>...</script> etc.
;; (defadvice company-tern (before web-mode-set-up-ac-sources activate)
;;   (message "advise")
;;   "Set `tern-mode' based on current language before running company-tern."
;;   (if (equal major-mode 'web-mode)
;;       (let ((web-mode-cur-language
;;              (web-mode-language-at-pos)))
;;         (if (or (string= web-mode-cur-language "javascript")
;;                 (string= web-mode-cur-language "jsx")
;;                 )
;;             (unless tern-mode (tern-mode))
;;           (if tern-mode (tern-mode -1))))))

;; node.js
;; (setq exec-path (append exec-path '("~/.emacs.d/node_modules/.bin")))
(defun do-nvm-use (version)
  (interactive "sVersion: ")
  (nvm-use version))

(provide 'init-web)
