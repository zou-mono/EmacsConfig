(require 'markdown-mode)


;;(add-to-list 'auto-mode-alist '("\\.[Mm][Dd]$" . poly-markdown-mode))
(add-to-list 'auto-mode-alist '("\\.[Mm][Dd]$" . markdown-mode))
(add-hook 'markdown-mode-hook 'pandoc-mode)

