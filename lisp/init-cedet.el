(require 'cedet)
(require 'semantic/sb)

(semantic-mode 1)
(global-ede-mode 1)
(global-semanticdb-minor-mode 1)
(global-semantic-highlight-func-mode 1)
(global-semantic-mru-bookmark-mode 1)

(defun my-cedet-hook ()
  (local-set-key (kbd "C-c s b") 'semantic-mrub-switch-tags)
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  )

(add-hook 'python-mode-hook 'my-cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my-cedet-hook)








