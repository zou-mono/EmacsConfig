(require 'window-purpose)
(require 'ess-site)

(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.r$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.Rd$" . Rd-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw$" . ess-noweb-mode))

'(ess-R-font-lock-keywords
  (quote
   ((ess-R-fl-keyword:modifiers . t)
    (ess-R-fl-keyword:fun-defs . t)
    (ess-R-fl-keyword:keywords . t)
    (ess-R-fl-keyword:assign-ops . t)
    (ess-R-fl-keyword:constants . t)
    (ess-fl-keyword:fun-calls . t)
    (ess-fl-keyword:numbers)
    (ess-fl-keyword:operators)
    (ess-fl-keyword:delimiters)
    (ess-fl-keyword:=)
    (ess-R-fl-keyword:F&T)
    (ess-R-fl-keyword:%op%))))

(defun open-r-perspective ()
  (interactive)
  (setq ess-ask-for-ess-directory nil)
  (setq ess-directory "~/Documents/R_Project/")
  (R)
  (purpose-load-window-layout-file "~/.emacs.d/layouts/Rlayout.window-layout")
)

;; (setq ess-ask-about-transfile nil)

(global-set-key (kbd "C-c r") 'open-r-perspective)
