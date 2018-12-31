(require 'minions)
(require 'doom-modeline)

(require 'anzu)
(global-anzu-mode +1)

(doom-modeline-init)
(setq doom-modeline-minor-modes t)
(minions-mode 1)
(global-set-key [S-down-mouse-3] 'minions-minor-modes-menu)


(provide 'init-modeline)

;;; init-modeline.el ends here
