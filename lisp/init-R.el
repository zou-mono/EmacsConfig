(require 'window-purpose)
(require 'ess-site)

(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.r$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.Rd$" . Rd-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw$" . noweb-mode))

(defun open-r-project ()
  (interactive)
  (setq ess-ask-for-ess-directory nil)
  (setq ess-directory "~/Documents/R_Project/")
  (R)
  (purpose-load-frame-layout-file "~/.emacs.d/.Rlayout")
)

(global-set-key (kbd "C-c r") 'open-r-project)
