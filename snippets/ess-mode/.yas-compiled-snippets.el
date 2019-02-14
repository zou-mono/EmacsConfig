;;; Compiled snippets and support files for `ess-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ess-mode
                     '(("tt" "`(current-time-string)`\n`(make-string (- fill-column 3) ?\\-)`\n$0" "test" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/test" nil nil)
                       ("spd" "# Connect to ace/spade\nspd_con <- dbConnect(\n  dbDriver(\"PostgreSQL\"),\n  host     = Sys.getenv(\"SPADE_URL\"),\n  port     = Sys.getenv(\"SPADE_PORT\"),\n  dbname   = Sys.getenv(\"SPADE_DBNAME\"),\n  user     = Sys.getenv(\"SPADE_USERNAME\"),\n  password = Sys.getenv(\"SPADE_PASSWORD\")\n)\n\n$0\n\n# Close connection to ace/spade\ndbDisconnect(spd_con)\n" "connect-to-spade" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/spade-connection" nil nil)
                       ("libs" "library(arm)\nlibrary(RPostgreSQL)\nlibrary(brocks)\nlibrary(tidyverse)" "Load common libraries" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/libraries" nil nil)
                       ("if" "if (${1:condition}) {\n  `yas/selected-text`$0\n}" "if (...) { ... }" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/if" nil nil)
                       ("ggscat" "ggplot($1, aes($2, $3)) +\n  geom_point() +\n  geom_smooth() +\n  theme_bw()\n" "ggplot scatter" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/ggplot_scatter" nil nil)
                       ("f" "${1:name} <- function(${2:args}) {\n  `yas/selected-text`$0\n}" "FUNC <- function(...) { ... }" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/function" nil nil)
                       ("for" "for (${1:i} in ${2:vector}) {\n  `yas/selected-text`$0\n}" "for ( ... in ...) { ... }" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/for" nil nil)
                       ("s" "### ${1:} ${1:$(\n  \n  make-string (\n    ceiling (/ (- fill-column 3 (string-width yas-text)) 1.0)\n  ) ?\\-\n\n  )}\n\n$0\n" "comment divider" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/comment-divider" nil nil)
                       ("cb" "### `(make-string (- fill-column 3) ?\\-)`\n### $0\n### `(make-string (- fill-column 3) ?\\-)`" "comment block" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/comment-block" nil nil)
                       ("T" "TRUE" "TRUE" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/TRUE" nil nil)
                       ("F" "FALSE" "FALSE" nil nil nil "/home/mono/.emacs.d/snippets/ess-mode/FALSE" nil nil)))


;;; Do not edit! File generated at Thu Feb 14 16:31:58 2019
