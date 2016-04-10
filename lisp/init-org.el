(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
			      "xelatex -interaction nonstopmode %f"))

(setq org-html-mathjax-options '((path "./js/MathJax/MathJax.js")
                                 (scale "100") 
                                 (align "center") 
                                 (indent "2em")
                                 (mathml nil)))
