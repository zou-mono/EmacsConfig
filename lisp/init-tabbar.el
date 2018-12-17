(require 'tabbar)
;; Tabbar settings
(set-face-attribute
 'tabbar-default nil
 :background "gray20"
 :foreground "gray20"
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "gray30" 
 :foreground "white"
 :box '(:line-width 5 :color "gray30" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "gray75"
 :foreground "black"
 :box '(:line-width 5 :color "gray75" :style nil))
(set-face-attribute
 'tabbar-highlight nil
 :background "white"
 :foreground "black"
 :underline nil
 :box '(:line-width 5 :color "white" :style nil))
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "gray20"
 :height 0.6)

;; Change padding of the tabs
;; we also need to set separator to avoid overlapping tabs by highlighted tabs
;; (setq tabbar-separator '0.5)

(defun tabbar-buffer-groups ()
   "Return the list of group names the current buffer belongs to.
     Return a list of one element based on major mode."
   (list
    (cond
     ((or (get-buffer-process (current-buffer))
          ;; Check if the major mode derives from `comint-mode' or
          ;; `compilation-mode'.
          (tabbar-buffer-mode-derived-p
           major-mode '(comint-mode compilation-mode)))
      "Process"
      )
     ((string-equal "*" (substring (buffer-name) 0 1))
      "Common"
      )
     ;; ((member (buffer-name)
     ;;          '("xyz" "day" "m3" "abi" "for" "nws" "eng" "f_g" "tim" "tmp"))
     ;;  "Main"
     ;;  )
     ((eq major-mode 'dired-mode)
      "Common"
      )
     ((memq major-mode
            '(help-mode apropos-mode Info-mode Man-mode))
      "Common"
      )
     ((memq major-mode
            '(rmail-mode
              rmail-edit-mode vm-summary-mode vm-mode mail-mode
              mh-letter-mode mh-show-mode mh-folder-mode
              gnus-summary-mode message-mode gnus-group-mode
              gnus-article-mode score-mode gnus-browse-killed-mode))
      "Mail"
      )
     (t
      ;; Return `mode-name' if not blank, `major-mode' otherwise.
      (if (and (stringp mode-name)
               ;; Take care of preserving the match-data because this
               ;; function is called when updating the header line.
               (save-match-data (string-match "[^ ]" mode-name)))
          mode-name
        (symbol-name major-mode))
      ))))

(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)
(global-set-key [M-up] 'tabbar-backward-group)
(global-set-key [M-down] 'tabbar-forward-group)

(tabbar-mode 1)

(provide 'init-tabbar)
