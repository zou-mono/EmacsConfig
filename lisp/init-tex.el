;;(load "auctex.el" nil t t)
;;(load "preview-latex.el" nil t t)
;;(require 'company-auctex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'TeX-fold-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  TeX-show-compilation t) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (latex-preview-pane-mode)
            (setq latex-preview-pane-multifile-mode (quote auctex))
            (setq pdf-latex-command "xelatex")
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

(setq reftex-file-extensions
      '(("Snw" "Rnw" "nw" "tex" ".tex" ".ltx") ("bib" ".bib")))
(setq TeX-file-extensions
      '("Snw" "Rnw" "nw" "tex" "sty" "cls" "ltx" "texi" "texinfo"))

;(add-hook 'reftex-load-hook 'imenu-add-menubar-index)
;(add-hook 'reftex-mode-hook 'imenu-add-menubar-index)	

;; (setq ess-ask-about-transfile nil)
(global-set-key [down-mouse-3] 'imenu)

(company-auctex-init)

(provide 'init-tex)
