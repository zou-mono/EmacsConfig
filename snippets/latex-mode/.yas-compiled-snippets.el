;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("tikz" "\n\\begin{tikzpicture}\n$0\n\\end{tikzpicture}" "tikzpicture environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/tikzpicture-env" nil nil)
                       ("tblx" "\n\\begin{table}[!ht]\\centering\n\\caption{\\label{tbl:}} \n\\begin{tabularx}{\\textwidth}{|X|X|}\\\\\\\\\\hline\n\\multicolumn{1}{|c|}{\\bfseries $0} & \\multicolumn{1}{c|}{\\bfseries $1}\\\\\\\\\\hline\n  & \\\\\\\\\n\\hline\n\\end{tabularx}\n\\end{table}\n" "tabularx environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/tabularx-env" nil nil)
                       ("scope" "\n\\begin{scope}\n$0\n\\end{scope}" "scope environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/scope-env" nil nil)
                       ("rnw" "<<$0>>=\n@\n" "rnw-block" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/rmarkdown-chunk" nil nil)
                       ("ltblx" "\n\\begin{longtabu} to \\textwidth {|c|X[1,c]|}\n\\caption{\\label{tbl:}}\n\\hline\n\\multicolumn{1}{|c|}{\\bfseries $0} & \\multicolumn{1}{c|}{\\bfseries $1}\\\\\\\\\\hline\n  & \\\\\\\\\n\\hline\n\\end{longtabu}\n\n" "longtabu environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/longtablex-env" nil nil)
                       ("ctbl" "\n\\begin{table}[!ht]\\centering \n\\caption{\\label{tbl:}}\n\\begin{tabular}{|c|l|}\n\\hline\n $0 & \\\\\\\\\n\\hline\n\\end{tabular}\n\\end{table}\n" "common table environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/commontable-env" nil nil)
                       ("center" "\n\\begin{center}\n$0\n\\end{center}" "centering environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/center-env" nil nil)
                       ("btbl" "\n\\begin{table} \\centering \n\\caption{{\\label{tbl:}}}\n\\begin{tabular}{|c|c|}\n  \\toprule\n  \\rowcolor{LightCyan}\n  \\multicolumn{1}{|c|}{\\textbf{参数名称}} & \\multicolumn{1}{c|}{\\textbf{作用}} \\\\\\\\ \\hline\n$0 & \\\\\\\\ \\hline\n& \\\\\\\\\n  \\bottomrule\n \\end{tabular}\n\\end{table}\n" "book table environment" nil nil nil "/home/mono/.emacs.d/snippets/latex-mode/booktable-env" nil nil)))


;;; Do not edit! File generated at Fri Sep  7 17:39:45 2018
