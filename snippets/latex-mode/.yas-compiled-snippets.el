;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("tikz" "\\begin{tikzpicture}\n$0\n\\end{tikzpicture}" "tikzpicture environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/tikzpicture-env" nil nil)
                       ("tblx" "\\begin{table}[!ht]\\centering\n\\caption{\\label{tbl:}} \n\\begin{tabularx}{\\textwidth}{|X|X|}\\\\\\\\\\hline\n\\multicolumn{1}{|c|}{\\bfseries $0} & \\multicolumn{1}{c|}{\\bfseries $1}\\\\\\\\\\hline\n  & \\\\\\\\\n\\hline\n\\end{tabularx}\n\\end{table}\n" "tabularx environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/tabularx-env" nil nil)
                       ("subfig" "\\begin{figure}\\centering\n    \\subfloat[$1]\n    {\\includegraphics[width=0.48\\textwidth]{$2}}\\vspace{1pt} \n    \\subfloat[$3]\n    {\\includegraphics[width=0.48\\textwidth]{$4}}\n    \\caption{$5}\n\\end{figure}\n" "subfig environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/subfig-env" nil nil)
                       ("scope" "\\begin{scope}\n$0\n\\end{scope}" "scope environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/scope-env" nil nil)
                       ("rnw" "<<$0>>=\n@\n" "rnw-block" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/rmarkdown-chunk" nil nil)
                       ("ov" "\\begin{overlayarea}{\\textwidth}{\\textheight}\n\\begin{onlyenv}<${1:1}>\n$2\n\\end{onlyenv}\n\\end{overlayarea}\n" "overlayarea environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/overlayarea-env" nil nil)
                       ("ltblx" "\\begin{longtabu} to \\textwidth {|c|X[1,c]|}\n\\caption{\\label{tbl:}}\n\\hline\n\\multicolumn{1}{|c|}{\\bfseries $0} & \\multicolumn{1}{c|}{\\bfseries $1}\\\\\\\\\\hline\n  & \\\\\\\\\n\\hline\n\\end{longtabu}\n\n" "longtabu environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/longtablex-env" nil nil)
                       ("it" "\\begin{itemize}\n\\item<1-> $0\n\\end{itemize}\n" "itemize environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/item-env" nil nil)
                       ("fr" "\\begin{frame}[t]{$0}\n$1\n\\end{frame}\n" "frame environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/frame-env" nil nil)
                       ("fig" "\\begin{figure}\n    \\centering\n    \\includegraphics[width=\\textwidth]{$1}\n    \\caption{$2}\n\\end{figure}\n" "figure environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/figure-env" nil nil)
                       ("enum" "\\begin{enumerate}\n$0\n\\end{enumerate}\n" "enumerate environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/enumerate-env" nil nil)
                       ("ctbl" "\\begin{table}[!ht]\\centering \n\\caption{\\label{tbl:}}\n\\begin{tabular}{|c|l|}\n\\hline\n $0 & \\\\\\\\\n\\hline\n\\end{tabular}\n\\end{table}\n" "common table environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/commontable-env" nil nil)
                       ("col" "\\begin{columns}\n   \\begin{column}{.5\\textwidth}\n\n    \\end{column}\n    \\begin{column}{.5\\textwidth}\n\n    \\end{column}\n\\end{columns}\n" "column environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/columns-env" nil nil)
                       ("colfig" "\\begin{columns}\n   \\begin{column}{.5\\textwidth}\n       \\begin{figure}\\flushright\n           \\includegraphics[height=0.3\\textheight]{}\n           \\caption{}\n       \\end{figure}\n    \\end{column}\n    \\begin{column}{.5\\textwidth}\n       \\begin{figure}\\flushleft\n           \\includegraphics[height=0.3\\textheight]{}\n           \\caption{}\n       \\end{figure}\n    \\end{column}\n\\end{columns}\n" "column figures" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/columnfigures" nil nil)
                       ("center" "\\begin{center}\n$0\n\\end{center}" "centering environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/center-env" nil nil)
                       ("btbl" "\\begin{table} \\centering \n\\caption{{\\label{tbl:}}}\n\\begin{tabular}{|c|c|}\n  \\toprule\n  \\rowcolor{LightCyan}\n  \\multicolumn{1}{|c|}{\\textbf{参数名称}} & \\multicolumn{1}{c|}{\\textbf{作用}} \\\\\\\\ \\hline\n$0 & \\\\\\\\ \\hline\n& \\\\\\\\\n  \\bottomrule\n \\end{tabular}\n\\end{table}\n" "book table environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/booktable-env" nil nil)))


;;; Do not edit! File generated at Fri Feb 15 00:01:14 2019
