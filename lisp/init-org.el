(require 'org)
(require 'ox-publish)

(setq org-export-allow-bind-keywords t)
(setq hexo-dir "~/Documents/blog/test/")
(setq org-support-shift-select t)

(defun website-html-postamble()
 (format "
<div style='font-size: 14px;padding: 5px;line-height: 20px;border: 1px solid;'>
<a>Copyright (c) 2016-2020 %%a</a> - Last Updated %s.</br>Render by <a href='https://github.com/CodeFalling/hexo-renderer-org'>hexo-renderer-org</a> with %s</div>
" (format-time-string "%Y-%m-%d") org-html-creator-string))

(setq org-html-postamble (website-html-postamble))

(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
			      "xelatex -interaction nonstopmode %f"))

(setq org-html-mathjax-options
       '((path "http://cdn.bootcss.com/mathjax/2.6.1/MathJax.js")
         (scale "100") 
         (align "center") 
         (indent "2em")
         (mathml nil))
       )

(defun org-insert-src-block (src-code-type)
  "Insert a `SRC-CODE-TYPE' type source code block in org-mode."
  (interactive
   (let ((src-code-types
          '("emacs-lisp" "python" "C" "sh" "java" "js" "clojure" "C++" "css"
            "calc" "asymptote" "dot" "gnuplot" "ledger" "lilypond" "mscgen"
            "octave" "oz" "plantuml" "R" "sass" "screen" "sql" "awk" "ditaa"
            "haskell" "latex" "lisp" "matlab" "ocaml" "org" "perl" "ruby"
            "scheme" "sqlite")))
     (list (ido-completing-read "Source code type: " src-code-types))))
  (progn
    (newline-and-indent)
    (insert (format "#+BEGIN_SRC %s\n" src-code-type))
    (newline-and-indent)
    (insert "#+END_SRC\n")
    (previous-line 2)
    (org-edit-src-code)))

;; (setq org-publish-project-alist
;;       '(("site-content"
;; 	 publishing-function org-publish-org-to-html
;; 	 :author ""
;; 	 :link-home "index.html"
;; 	 :html-preamble (concat "INSERT HTML CODE HERE FOR PREAMBLE")
;; 	 :html-postamble (concat "INSERT HTML CODE HERE FOR POSTAMBLE"))
;; 	("site" :components ("site-content"))))

(defun hexo/auto-deploy (commit-msg)
  (format "cd %s; git add --all & git commit & git push & hexo d -g" hexo-dir)
  (interactive "sInput commit message:")
  (async-shell-command (format "cd %s ;git add . ;git commit -m \"%s\" ;git push origin source;hexo d -g"
			 hexo-dir
			 commit-msg)))

(defun hexo/org-new-draft (post-name)
  "create a hexo org draft"
  (interactive "sInput draft name:")
  (find-file (format "%s/source/_drafts/%s.org" hexo-dir post-name))
  (insert (format "#+TITLE: %s
#+DATE: <%s>
#+TAGS:
#+LAYOUT:post
#+CATEGORIES:
#+OPTIONS: toc:nil
#+STARTUP: indent
#+LATEX_HEADER: \\usepackage{xeCJK}
#+LATEX_HEADER: \\setCJKmainfont{WenQuanYi Micro Hei Mono}
#+BIND: org-html-postamble \"<div style='font-size: 14px;padding: 5px;line-height: 20px;border: 1px solid;'> Copyright (c) 2016-2020 %%a - Last Updated %%C.</br>Render by <a href='https://github.com/CodeFalling/hexo-renderer-org'>hexo-renderer-org</a> with %%c</div>\"
"  post-name (format-time-string "%Y-%m-%d %H:%M:%S"))))

(defun hexo/publish (post-name)
  "overwrite hexo publish in org-mode."
  (interactive "f")
  (copy-file post-name (replace-regexp-in-string "_drafts" "_posts" (diredp-parent-dir post-name)) 1))

(defun hexo/server ()
  (interactive)
  (async-shell-command (format "cd %s; hexo g; hexo s" hexo-dir)))

(defun hexo/test ()
  (interactive)
  (async-shell-command (format "cd %s; hexo s --draft" hexo-dir)))



