;; treemacs
(require 'treemacs-projectile)
(require 'treemacs-icons-dired)

(setq treemacs-follow-after-init          t
      treemacs-width                      35
      treemacs-indentation                2
      treemacs-git-integration            t
      treemacs-collapse-dirs              3
      treemacs-silent-refresh             nil
      treemacs-change-root-without-asking nil
      treemacs-sorting                    'alphabetic-desc
      treemacs-show-hidden-files          t
      treemacs-never-persist              nil
      treemacs-is-never-other-window      nil
      treemacs-goto-tag-strategy          'refetch-index)
(setq treemacs-follow-mode t)
(setq treemacs-filewatch-mode t)
;; (setq treemacs-header-function 'treemacs-projectile-create-header)
(global-unset-key (kbd "C-t"))
(unless (boundp 'treemacs-map)
  (define-prefix-command 'treemacs-map))
(global-set-key (kbd "C-t") treemacs-map)
(define-key treemacs-map (kbd "t") 'treemacs-toggle)
(define-key treemacs-map (kbd "T") 'treemacs)
(define-key treemacs-map (kbd "f") 'treemacs-find-file)
(define-key treemacs-map (kbd "p") 'treemacs-projectile-toggle)
(define-key treemacs-map (kbd "P") 'treemacs-projectile)

(with-eval-after-load 'winum
  (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))

(setq treemacs-icons-dired-mode t)

(provide 'init-treemacs)
