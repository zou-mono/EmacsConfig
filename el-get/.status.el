((auctex status "installed" recipe
	 (:name auctex :website "http://www.gnu.org/software/auctex/" :description "AUCTeX is an extensible package for writing and formatting TeX files in GNU Emacs and XEmacs. It supports many different TeX macro packages, including AMS-TeX, LaTeX, Texinfo, ConTeXt, and docTeX (dtx files)." :type git :module "auctex" :url "git://git.savannah.gnu.org/auctex.git" :build
		`(("./autogen.sh")
		  ("./configure" "--without-texmf-dir" "--with-packagelispdir=$(pwd)" "--with-packagedatadir=$(pwd)" ,(concat "--with-emacs=" el-get-emacs))
		  ("make"))
		:build/darwin
		`(("./autogen.sh")
		  ("./configure" "--without-texmf-dir" "--with-packagelispdir=$(pwd)" "--with-packagedatadir=$(pwd)" "--with-lispdir=$(pwd)" ,(concat "--with-emacs=" el-get-emacs))
		  ("make"))
		:load-path
		(".")
		:load
		("tex-site.el" "preview-latex.el")
		:info "doc"))
 (cedet status "installed" recipe
	(:name cedet :website "http://cedet.sourceforge.net/" :description "CEDET is a Collection of Emacs Development Environment Tools written with the end goal of creating an advanced development environment in Emacs." :type git :url "http://git.code.sf.net/p/cedet/git" :build
	       `(("sh" "-c" "touch `find . -name Makefile`")
		 ("make" ,(format "EMACS=%s"
				  (shell-quote-argument el-get-emacs))
		  "clean-all")
		 ("make" ,(format "EMACS=%s"
				  (shell-quote-argument el-get-emacs)))
		 ("make" ,(format "EMACS=%s"
				  (shell-quote-argument el-get-emacs))
		  "-C" "contrib"))
	       :build/berkeley-unix
	       `(("sh" "-c" "touch `find . -name Makefile`")
		 ("gmake" ,(format "EMACS=%s"
				   (shell-quote-argument el-get-emacs))
		  "clean-all")
		 ("gmake" ,(format "EMACS=%s"
				   (shell-quote-argument el-get-emacs)))
		 ("gmake" ,(format "EMACS=%s"
				   (shell-quote-argument el-get-emacs))
		  "-C" "contrib"))
	       :build/windows-nt
	       `(("sh" "-c" "touch `/usr/bin/find . -name Makefile` && make FIND=/usr/bin/find"))
	       :features nil :lazy nil :post-init
	       (if
		   (or
		    (featurep 'cedet-devel-load)
		    (featurep 'eieio))
		   (message
		    (concat "Emacs' built-in CEDET has already been loaded!  Restart" " Emacs to load CEDET from el-get instead."))
		 (load
		  (expand-file-name "cedet-devel-load.el" pdir)))))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (color-theme status "installed" recipe
	      (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
		     ("xzf")
		     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
		     (progn
		       (color-theme-initialize)
		       (setq color-theme-is-global t))))
 (color-theme-solarized status "installed" recipe
			(:name color-theme-solarized :description "Emacs highlighting using Ethan Schoonover's Solarized color scheme" :type github :pkgname "sellout/emacs-color-theme-solarized" :depends color-theme :prepare
			       (progn
				 (add-to-list 'custom-theme-load-path default-directory)
				 (autoload 'color-theme-solarized-light "color-theme-solarized" "color-theme: solarized-light" t)
				 (autoload 'color-theme-solarized-dark "color-theme-solarized" "color-theme: solarized-dark" t))))
 (company-jedi status "installed" recipe
	       (:name company-jedi :description "Company backend for Python jedi." :website "https://github.com/syohex/emacs-company-jedi" :type github :pkgname "syohex/emacs-company-jedi"))
 (company-math status "installed" recipe
	       (:name company-math :description "Completion back-ends for for math unicode symbols and latex tags" :website "https://github.com/vspinu/company-math" :type github :depends
		      (company-mode math-symbol-lists)
		      :pkgname "vspinu/company-math"))
 (company-mode status "installed" recipe
	       (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (company-tern status "installed" recipe
	       (:name company-tern :description "Tern backend for company-mode." :type github :pkgname "proofit404/company-tern" :depends
		      (dash company-mode s tern)
		      :post-init
		      (eval-after-load 'company
			'(add-to-list 'company-backends 'company-tern))))
 (company-web status "installed" recipe
	      (:name company-web :description "Company-web is an alternative emacs plugin for autocompletion in html-mode, web-mode, jade-mode, slim-mode and use data of ac-html. It uses company-mode." :website "https://github.com/osv/company-web" :type github :pkgname "osv/company-web"))
 (ctable status "installed" recipe
	 (:name ctable :description "Table Component for elisp" :type github :pkgname "kiwanami/emacs-ctable"))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp." :type github :pkgname "kiwanami/emacs-deferred"))
 (dired+ status "installed" recipe
	 (:name dired+ :description "Extensions to Dired" :type emacswiki :features dired+))
 (ecb status "required" recipe nil)
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:features el-get :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (epc status "installed" recipe
      (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
	     (deferred ctable)))
 (ess status "installed" recipe
      (:name ess :before
	     (progn
	       (autoload 'R "ess-site.el" "ESS" t))
	     :description "Emacs Speaks Statistics: statistical programming within Emacs" :type github :pkgname "emacs-ess/ESS" :website "http://ess.r-project.org/" :info "doc/info/" :build
	     `(("make" "clean" "all" ,(concat "EMACS="
					      (shell-quote-argument el-get-emacs))))
	     :load "ess-autoloads.el" :prepare
	     (progn
	       (autoload 'R-mode "ess-site" nil t)
	       (autoload 'Rd-mode "ess-site" nil t)
	       (autoload 'Rnw-mode "ess-site" nil t))))
 (exec-path-from-shell status "installed" recipe
		       (:name exec-path-from-shell :website "https://github.com/purcell/exec-path-from-shell" :description "Emacs plugin for dynamic PATH loading" :type github :pkgname "purcell/exec-path-from-shell"))
 (f status "installed" recipe
    (:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
	   (s dash)
	   :type github :pkgname "rejeep/f.el"))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (ggtags status "installed" recipe
	 (:name ggtags :description "Use GNU Global in Emacs." :type github :pkgname "leoliu/ggtags"))
 (helm status "installed" recipe
       (:name helm :features
	      (helm-config)
	      :description "Emacs incremental completion and narrowing framework" :type github :pkgname "emacs-helm/helm" :autoloads "helm-autoloads" :build
	      (("make"))
	      :build/darwin
	      `(("make" ,(format "EMACS_COMMAND=%s" el-get-emacs)))
	      :build/windows-nt
	      (let
		  ((generated-autoload-file
		    (expand-file-name "helm-autoloads.el"))
		   \
		   (backup-inhibited t))
	      (update-directory-autoloads default-directory)
	      nil)
       :post-init
       (helm-mode)))
(jedi-core status "installed" recipe
(:name jedi-core :website "https://github.com/tkf/emacs-jedi" :description "Python auto-completion for Emacs." :type http :url "https://github.com/tkf/emacs-jedi/raw/master/jedi-core.el" :minimum-emacs-version "24" :depends
(epc python-environment cl-lib)))
(js2-mode status "installed" recipe
(:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
(autoload 'js2-mode "js2-mode" nil t)))
(let-alist status "installed" recipe
(:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.0.50" :type elpa :url "https://elpa.gnu.org/packages/let-alist.html"))
(markdown-mode status "installed" recipe
(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type git :url "git://jblevins.org/git/markdown-mode.git" :prepare
(add-to-list 'auto-mode-alist
'("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
(math-symbol-lists status "installed" recipe
(:name math-symbol-lists :description "Lists of Unicode mathematical symbols and latex commands" :website "https://github.com/vspinu/math-symbol-lists" :type github :depends nil :pkgname "vspinu/math-symbol-lists"))
(nvm status "installed" recipe
(:name nvm :after nil :depends
(dash s f)
:website "git@github.com:rejeep/nvm.el.git" :description "Manage Node versions within Emacs" :type github :pkgname "rejeep/nvm.el"))
(org-mode status "installed" recipe
(:name org-mode :website "http://orgmode.org/" :description "Org-mode is for keeping notes, maintaining ToDo lists, doing project planning, and authoring with a fast and effective plain-text system." :type git :url "git://orgmode.org/org-mode.git" :info "doc" :build/berkeley-unix `,(mapcar
(lambda
(target)
(list "gmake" target
(concat "EMACS="
(shell-quote-argument el-get-emacs))))
'("oldorg"))
:build `,(mapcar
(lambda
(target)
(list "make" target
(concat "EMACS="
(shell-quote-argument el-get-emacs))))
'("oldorg"))
:load-path
("." "contrib/lisp" "lisp")
:load
("lisp/org-loaddefs.el")))
(package status "installed" recipe
(:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
(progn
(let
((old-package-user-dir
(expand-file-name
(convert-standard-filename
(concat
(file-name-as-directory default-directory)
"elpa")))))
(when
(file-directory-p old-package-user-dir)
(add-to-list 'package-directory-list old-package-user-dir)))
(setq package-archives
(bound-and-true-p package-archives))
(mapc
(lambda
(pa)
(add-to-list 'package-archives pa 'append))
'(("ELPA" . "http://tromey.com/elpa/")
("melpa" . "http://melpa.org/packages/")
("gnu" . "http://elpa.gnu.org/packages/")
("marmalade" . "http://marmalade-repo.org/packages/")
("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
(pyenv status "installed" recipe
(:name pyenv :description "Emacs integration for pyenv" :type github :pkgname "shellbj/pyenv.el" :compile "pyenv.el"))
(python-environment status "installed" recipe
(:name python-environment :description "Python virtualenv API for Emacs Lisp" :type github :pkgname "tkf/emacs-python-environment" :depends
(deferred)))
(request status "installed" recipe
(:name request :description "Easy HTTP request for Emacs Lisp" :type github :submodule nil :pkgname "abingham/emacs-request" :depends
(deferred)
:provide
(request-deferred)))
(s status "installed" recipe
(:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
(session status "installed" recipe
(:name session :before
(progn
(autoload 'session-initialize "session" nil t)
(autoload 'session-jump-to-last-change "session" nil t))
:after
(progn
(add-hook 'after-init-hook 'session-initialize))
:description "When you start Emacs, package Session restores various variables (e.g., input histories) from your last session. It also provides a menu containing recently changed/visited files and restores the places (e.g., point) of such a file when you revisit it." :type http-tar :options
("xzf")
:load-path
("lisp")
:url "http://downloads.sourceforge.net/project/emacs-session/session/session-2.3a.tar.gz"))
(smart-tab status "required" recipe
(:name smart-tab :description "Intelligent tab completion and indentation." :type github :pkgname "genehack/smart-tab" :features smart-tab))
(smarttabs status "required" recipe
(:name smarttabs :website "https://github.com/jcsalomon/smarttabs" :description "Emacs smart tabs - indent with tabs, align with spaces!" :type github :pkgname "jcsalomon/smarttabs"))
(smex status "installed" recipe
(:name smex :after
(progn
(setq smex-save-file "~/.emacs.d/.smex-items")
(global-set-key
(kbd "M-x")
'smex)
(global-set-key
(kbd "M-X")
'smex-major-mode-commands))
:description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
(smex-initialize)))
(speedbar-extension status "installed" recipe
(:name speedbar-extension :auto-generated t :type emacswiki :description "Some extensions for speedbar" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/speedbar-extension.el"))
(sr-speedbar status "installed" recipe
(:name sr-speedbar :type emacswiki :description "Same frame speedbar" :prepare
(global-set-key
(kbd "s-s")
'sr-speedbar-toggle)))
(tabbar status "installed" recipe
(:name tabbar :description "Display a tab bar in the header line." :type github :pkgname "dholm/tabbar" :lazy t))
(tern status "installed" recipe
(:name tern :description "A JavaScript code analyzer for deep, cross-editor language support." :type github :pkgname "marijnh/tern" :build
'(("npm" "--production" "install"))
:prepare
(add-to-list 'auto-mode-alist
'("\\.tern-\\(project\\|\\config\\)\\'" . json-mode))
:load-path
("emacs")))
(virtualenvwrapper status "installed" recipe
(:name virtualenvwrapper :type github :website "https://github.com/porterjamesj/virtualenvwrapper.el" :description "virtualenv tool for emacs" :pkgname "porterjamesj/virtualenvwrapper.el" :depends
(dash s)))
(web-beautify status "installed" recipe
(:name web-beautify :after nil :website "git@github.com:yasuyk/web-beautify.git" :description "web-beautify is a formatting package of HTML, CSS and JavaScript/JSON for Emacs." :type github :pkgname "yasuyk/web-beautify"))
(web-completion-data status "installed" recipe
(:name web-completion-data :description "Shared completion data for ac-html and company-web" :type github :pkgname "osv/web-completion-data"))
(web-mode status "installed" recipe
(:name web-mode :description "emacs major mode for editing PHP/JSP/ASP HTML templates (with embedded CSS and JS blocks)" :type github :pkgname "fxbois/web-mode"))
(websocket status "installed" recipe
(:name websocket :description "A websocket implementation in elisp, for emacs." :type github :pkgname "ahyatt/emacs-websocket"))
(window-numbering status "installed" recipe
(:name window-numbering :website "http://nschum.de/src/emacs/window-numbering-mode/" :description "Assigns numbers to Emacs windows to allow easy window navigation." :type github :pkgname "nschum/window-numbering.el"))
(window-purpose status "installed" recipe
(:name window-purpose :description "Organize Windows and Buffers According to Purposes." :website "https://github.com/bmag/emacs-purpose" :type github :pkgname "bmag/emacs-purpose")))
