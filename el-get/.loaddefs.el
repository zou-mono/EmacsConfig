;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (22185 33919 718114 382000))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "auto-complete/auto-complete-config" "auto-complete/auto-complete-config.el"
;;;;;;  (22185 33919 718114 382000))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "color-theme-solarized/color-theme-solarized"
;;;;;;  "color-theme-solarized/color-theme-solarized.el" (22284 37521
;;;;;;  890229 99000))
;;; Generated autoloads from color-theme-solarized/color-theme-solarized.el

(autoload 'color-theme-solarized "color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn)" t nil)

(autoload 'color-theme-solarized-dark "color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn)" nil nil)

(make-obsolete 'color-theme-solarized-dark 'color-theme-solarized '"2013-05-01")

(autoload 'color-theme-solarized-light "color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn)" nil nil)

(make-obsolete 'color-theme-solarized-light 'color-theme-solarized '"2013-05-01")

;;;***

;;;### (autoloads nil "color-theme-solarized/solarized-definitions"
;;;;;;  "color-theme-solarized/solarized-definitions.el" (22284 37521
;;;;;;  890229 99000))
;;; Generated autoloads from color-theme-solarized/solarized-definitions.el

(when (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil "color-theme/color-theme" "color-theme/color-theme.el"
;;;;;;  (17529 41105 0 0))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "dired+/dired+" "dired+/dired+.el" (22358 10229
;;;;;;  834529 909000))
;;; Generated autoloads from dired+/dired+.el

(defvar diff-switches "-c" "\
*A string or list of strings specifying switches to be passed to diff.")

(custom-autoload 'diff-switches "dired+/dired+" t)

(defvar diredp-auto-focus-frame-for-thumbnail-tooltip-flag nil "\
*Non-nil means automatically focus the frame for a thumbnail tooltip.
If nil then you will not see a thumbnail image tooltip when you
mouseover an image-file name in Dired, unless you first give the frame
the input focus (e.g., by clicking its title bar).

This option has no effect if `diredp-image-preview-in-tooltip' is nil.
It also has no effect for Emacs versions prior to Emacs 22.")

(custom-autoload 'diredp-auto-focus-frame-for-thumbnail-tooltip-flag "dired+/dired+" t)

(defvar diredp-compressed-extensions '(".tar" ".taz" ".tgz" ".arj" ".lzh" ".zip" ".z" ".Z" ".gz" ".bz2") "\
*List of compressed-file extensions, for highlighting.")

(custom-autoload 'diredp-compressed-extensions "dired+/dired+" t)

(defvar diredp-dwim-any-frame-flag pop-up-frames "\
*Non-nil means the target directory can be in a window in another frame.
Only visible frames are considered.
This is used by ``dired-dwim-target-directory'.
This option has no effect for Emacs versions before Emacs 22.")

(custom-autoload 'diredp-dwim-any-frame-flag "dired+/dired+" t)

(unless (fboundp 'define-minor-mode) (defcustom diredp-highlight-autofiles-mode t "*Non-nil means highlight names of files that are autofile bookmarks.\nAutofiles that have tags are highlighted using face\n`diredp-tagged-autofile-name'.  Those with no tags are highlighted\nusing face `diredp-autofile-name'.\n\nSetting this option directly does not take effect; use either\n\\[customize] or command `diredp-highlight-autofiles-mode'.\n\nNOTE: When `dired+.el' is loaded (for the first time per Emacs\nsession), the highlighting is turned ON, regardless of the option\nvalue.  To prevent this and have the highlighting OFF by default, you\nmust do one of the following:\n\n * Put (diredp-highlight-autofiles-mode -1) in your init file, AFTER\n   it loads `dired+.el'.\n\n * Customize the option to `nil', AND ensure that your `custom-file'\n   (or the `custom-saved-variables' part of your init file) is\n   evaluated before `dired+.el' is loaded.\n\nThis option has no effect unless you use libraries `Bookmark and\n`highlight.el'." :set (lambda (symbol value) (diredp-highlight-autofiles-mode (if value 1 -1))) :initialize 'custom-initialize-default :type 'boolean :group 'Dired-Plus :require 'dired+))

(defvar diredp-ignore-compressed-flag t "\
*Non-nil means to font-lock names of compressed files as ignored files.
This applies to filenames whose extensions are in
`diredp-compressed-extensions'.  If nil they are highlighted using
face `diredp-compressed-file-name'.")

(custom-autoload 'diredp-ignore-compressed-flag "dired+/dired+" t)

(defvar diredp-image-preview-in-tooltip (or (and (boundp 'image-dired-thumb-size) image-dired-thumb-size) 100) "\
*Whether and what kind of image preview to show in a tooltip.
The possible values are:

 `nil'       : do not show a tooltip preview
 integer N>0 : show a thumbnail preview of that size
 `full'      : show a full-size preview of the image

To enable tooltip image preview you must turn on `tooltip-mode' and
load library `image-dired.el'.  See also option
`diredp-auto-focus-frame-for-thumbnail-tooltip-flag'.

This option has no effect for Emacs versions prior to Emacs 22.")

(custom-autoload 'diredp-image-preview-in-tooltip "dired+/dired+" t)

(defvar diredp-image-show-this-file-use-frame-flag t "\
Non-nil means `diredp-image-show-this-file' uses another frame.
If nil then it uses another window.  Using another frame means you
have more control over the image size when you use a prefix arg.

If it uses another window then the prefix arg controls only the
minimum window height, not necessarily the image scale (height).

\(If the buffer displaying the image is already considered a
special-display buffer by your Emacs setup, then a nil value of this
option has no effect.)")

(custom-autoload 'diredp-image-show-this-file-use-frame-flag "dired+/dired+" t)

(defvar diredp-prompt-for-bookmark-prefix-flag nil "\
*Non-nil means prompt for a prefix string for bookmark names.")

(custom-autoload 'diredp-prompt-for-bookmark-prefix-flag "dired+/dired+" t)

(defvar diredp-w32-local-drives '(("C:" "Local disk")) "\
*Local MS Windows drives that you want to use for `diredp-w32-drives'.
Each entry is a list (DRIVE DESCRIPTION), where DRIVE is the drive
name and DESCRIPTION describes DRIVE.")

(custom-autoload 'diredp-w32-local-drives "dired+/dired+" t)

(defvar diredp-wrap-around-flag t "\
*Non-nil means Dired \"next\" commands wrap around to buffer beginning.")

(custom-autoload 'diredp-wrap-around-flag "dired+/dired+" t)

(autoload 'diredp-image-dired-create-thumb "dired+/dired+" "\
Create thumbnail image file for FILE (default: file on current line).
With a prefix arg, replace any existing thumbnail for FILE.
With a numeric prefix arg (not a cons), use it as the thumbnail size.
Return the name of the thumbnail image file, or nil if none.

\(fn FILE &optional ARG)" t nil)

(autoload 'image-dired-dired-insert-marked-thumbs "dired+/dired+" "\
Insert thumbnails before file names of marked files in the Dired buffer.

\(fn)" t nil)

(autoload 'image-dired-dired-toggle-marked-thumbs "dired+/dired+" "\
Toggle thumbnails in front of file names in Dired.
If no files are marked, insert or hide thumbnails on the current line.
With a numeric prefix arg N, ignore marked files and act on the next N
files (previous -N files, if N < 0).

\(fn &optional ARG)" t nil)

(autoload 'diredp-image-dired-comment-file "dired+/dired+" "\
Add comment to this image file.

\(fn)" t nil)

(autoload 'diredp-image-dired-tag-file "dired+/dired+" "\
Tag this image file with an `image-dired' tag.

\(fn)" t nil)

(autoload 'diredp-image-dired-delete-tag "dired+/dired+" "\
Remove an `image-dired' tag from  this image file.

\(fn)" t nil)

(autoload 'diredp-image-dired-display-thumb "dired+/dired+" "\
Pop to thumbnail of this image file, in `image-dired-thumbnail-buffer'.
If a thumbnail image does not yet exist for this file, create it.
With a prefix arg, append the thumbnail to the thumbnails buffer,
instead of clearing the buffer first.

\(fn &optional APPEND)" t nil)

(autoload 'diredp-image-dired-copy-with-exif-name "dired+/dired+" "\
Copy this image file to your main image directory.
Uses `image-dired-get-exif-file-name' to name the new file.

\(fn)" t nil)

(autoload 'diredp-image-dired-edit-comment-and-tags "dired+/dired+" "\
Edit comment and tags for this image file.

\(fn)" t nil)

(autoload 'diredp-do-display-images "dired+/dired+" "\
Display the marked image files.
A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any files are marked).
 More than one `C-u' means use all files in the Dired buffer, as if
 they were all marked.

\(fn &optional ARG)" t nil)

(autoload 'diredp-image-show-this-file "dired+/dired+" "\
Show the image file named on this line in another frame or window.
Option `diredp-image-show-this-file-use-frame-flag' which is used.

With a prefix arg, shrink the image to fit a frame that many lines
high or a window at least that many lines high.
Otherwise, show the image full size.
Note:
 * To show the image full size, you can also use `\\<dired-mode-map>\\[dired-find-file]'.
 * To show the image in another window, at whatever scale fits there,
   you can use `\\[image-dired-dired-display-image]'.

\(fn &optional ARG)" t nil)

(autoload 'diredp-dired-for-files "dired+/dired+" "\
Dired file names that you enter, in a Dired buffer that you name.
You are prompted for the name of the Dired buffer to use.
You are then prompted for names of files and directories to list.
Use `C-g' when you are done.

With a prefix arg you are first prompted for the `ls' switches to use.

See also `dired' (including the advice).

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-for-files-other-window "dired+/dired+" "\
Same as `diredp-dired-for-files' except uses another window.

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-recent-dirs "dired+/dired+" "\
Open Dired in BUFFER, showing recently used directories.
You are prompted for BUFFER.

No prefix arg or a plain prefix arg (`C-u', `C-u C-u', etc.) means
list all of the recently used directories.

With a prefix arg:
* If 0, `-', or plain (`C-u') then you are prompted for the `ls'
  switches to use.
* If not plain (`C-u') then:
  * If >= 0 then the directories to include are read, one by one.
  * If  < 0 then the directories to exclude are read, one by one.

When entering directories to include or exclude, use `C-g' to end.

\(fn BUFFER &optional ARG)" t nil)

(autoload 'diredp-dired-recent-dirs-other-window "dired+/dired+" "\
Same as `diredp-dired-recent-dirs', but use other window.

\(fn BUFFER &optional ARG)" t nil)

(autoload 'diredp-dired-union "dired+/dired+" "\
Create a Dired buffer that is the union of some existing Dired buffers.
With a non-negative prefix arg, you are prompted for `ls' switches.
With a non-positive prefix arg, you are prompted for file and dir
names to add to the listing - see below.

You are prompted for the name of the Dired union buffer.  Completion
against names of existing Dired buffers is available, but you can
enter any other name to create a new Dired buffer of that name.

If the union buffer name you choose names an existing Dired buffer,
then what happens depends on whether that buffer is an ordinary Dired
directory listing or a list of arbitrary file names.  That is, it
depends on whether `dired-directory' is a directory name or a cons of
a Dired buffer name plus file names.

* If the buffer is an ordinary Dired listing, then it is converted to
  an explicit list of absolute file names, just as if these had been
  chosen individually.  The existing buffer and window are replaced by
  new ones that show the explicit listing.  (This replacement is
  necessary because the list of files contained in an ordinary Dired
  listing cannot be modified.)

* If the buffer lists arbitrary file names explicitly, then it is
  updated to include also the files from any Dired buffers and any
  additional files that you specify.

If the union buffer name you choose does not name an existing Dired
buffer, then its `default-directory' is the same as the
`default-directory' before invoking the command.

If you use a non-positive prefix arg, then you can next choose
additional file and directory names to add to the listing.  Use `C-g'
when done choosing them.

Any directory names you choose this way are included as single entries
in the listing - the directory contents are not included (these
directories are not unioned).  To instead include the contents of a
directory chosen this way, use a glob pattern: `/*' after the
directory name.

You are then prompted for the Dired buffers to union.  Use `C-g' when
done choosing them.  These Dired listings to union are included in the
order that you chose them, and each entry is listed only once in the
new Dired buffer.

The new Dired listing respects the markings, subdirectory insertions,
and hidden subdirectories of the selected Dired listings.  However, in
case of conflict between marked or unmarked status for the same entry,
the entry is marked.  Similarly, in case of conflict over an included
subdirectory between it being hidden or shown, it is hidden, but its
contained files are also listed.

See also command `diredp-add-to-dired-buffer'.

From Lisp:
 DIRED-NAME is the name of the resulting Dired union buffer.
 DIRBUFS is a list of the names of Dired buffers to union.
 SWITCHES is a string of `ls' switches.
 EXTRA is a list of files & directories to be included in the listing.

\(fn DIRED-NAME DIRBUFS &optional SWITCHES EXTRA)" t nil)

(autoload 'diredp-add-to-dired-buffer "dired+/dired+" "\
Add individual file and directory names to a Dired buffer.
You are prompted for the buffer name.
With a prefix arg, you are also prompted for the `ls' switches.

The buffer must either not exist yet or must list arbitrary file and
directory names.  That is, it cannot be an ordinary Dired directory
listing - those cannot be modified.

Any directory names you choose this way are included as single entries
in the listing - the directory contents are not included (these
directories are not unioned).  To instead include the contents of a
directory chosen this way, use a glob pattern: `/*' after the
directory name.

See also command `diredp-dired-union'.

From Lisp:
 DIRED-NAME is the name of the Dired buffer to modify.
 TO-ADD is the list of files and dirs to add to it.
 SWITCHES is the string of `ls' switches.

\(fn DIRED-NAME TO-ADD &optional SWITCHES)" t nil)

(autoload 'diredp-add-to-this-dired-buffer "dired+/dired+" "\
Same as `diredp-add-to-dired-buffer' for this Dired buffer.

\(fn DIRED-NAME TO-ADD &optional SWITCHES)" t nil)

(autoload 'diredp-fileset "dired+/dired+" "\
Open Dired on the files in fileset FLSET-NAME.

\(fn FLSET-NAME)" t nil)

(autoload 'diredp-fileset-other-window "dired+/dired+" "\
Open Dired in another window on the files in fileset FLSET-NAME.

\(fn FLSET-NAME)" t nil)

(autoload 'diredp-dired-this-subdir "dired+/dired+" "\
Open Dired for the subdir at or above point.
If point is not on a subdir line, but is in an inserted subdir
listing, then use that subdir.

With a prefix arg:
 If the subdir is inserted and point is in the inserted listing then
 remove that listing and move to the ordinary subdir line.  In other
 words, when in an inserted listing, a prefix arg tears off the
 inserted subdir to its own Dired buffer.

\(fn &optional TEAR-OFF-P MSGP)" t nil)

(autoload 'diredp-dired-inserted-subdirs "dired+/dired+" "\
Open Dired for each of the subdirs inserted in this Dired buffer.
With a prefix arg, create the Dired buffers but do not display them.
Markings and current Dired switches are preserved.

\(fn &optional NO-SHOW-P MSGP)" t nil)

(autoload 'diredp-find-line-file-other-window "dired+/dired+" "\
Visit file named by current line, in another window.
The full text of the line is used as the file name.

\(fn)" t nil)

(autoload 'diredp-mouse-find-line-file-other-window "dired+/dired+" "\
Visit file named by clicked line, in another window.
The full text of the line is used as the file name.

\(fn E)" t nil)

(autoload 'diredp-list-marked "dired+/dired+" "\
List the marked files in this Dired buffer.
A prefix arg specifies files to use instead of the marked files:

 * Numeric prefix arg N: The next N files (previous -N, if < 0).
 * C-u C-u: All files, but no directories.
 * C-u C-u C-u: All files and directories, except `.' and `..'
 * C-u C-u C-u C-u: All files and directories, including `.' and `..'
 * Any other prefix arg: The current line's file only.

\(Note that a prefix arg acts

You can use `RET' or `mouse-2' to visit any of the files.
If `tooltip-mode' is on then moving the mouse over image-file names
shows image previews.

Non-interactively, non-nil arg PREDICATE is a file-name predicate.
List only the files for which it returns non-nil.

\(fn &optional ARG PREDICATE)" t nil)

(when (> emacs-major-version 21) (defun diredp-kill-this-tree nil "Remove this subdir listing and lower listings." (interactive) (dired-kill-tree (dired-current-directory) nil 'KILL-ROOT)))

(autoload 'diredp-insert-subdirs "dired+/dired+" "\
Insert the marked subdirectories.
Like using \\<dired-mode-map>`\\[dired-maybe-insert-subdir]' at each marked directory line.

\(fn &optional SWITCHES)" t nil)

(autoload 'diredp-insert-subdirs-recursive "dired+/dired+" "\
Insert the marked subdirs, including those in marked subdirs.
Like `diredp-insert-subdirs', but act recursively on subdirs.
The subdirs inserted are those that are marked in the current Dired
buffer, or ALL subdirs in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way (their marked
subdirs are inserted...).

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-shell-command-recursive "dired+/dired+" "\
Run shell COMMAND on the marked files, including those in marked subdirs.
Like `dired-do-shell-command', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn COMMAND &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-symlink-recursive "dired+/dired+" "\
Make symbolic links to marked files, including those in marked subdirs.
Like `dired-do-symlink', but act recursively on subdirs to pick up the
files to link.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-hardlink-recursive "dired+/dired+" "\
Add hard links for marked files, including those in marked subdirs.
Like `dired-do-hardlink', but act recursively on subdirs to pick up the
files to link.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-print-recursive "dired+/dired+" "\
Print the marked files, including those in marked subdirs.
Like `dired-do-print', but act recursively on subdirs to pick up the
files to print.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-display-thumbs-recursive "dired+/dired+" "\
Display thumbnails of marked files, including those in marked subdirs.
Like `image-dired-display-thumbs', but act recursively on subdirs.
Optional arguments APPEND and DO-NOT-POP are as for
`image-dired-display-thumbs'.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P APPEND DO-NOT-POP)" t nil)

(autoload 'diredp-image-dired-tag-files-recursive "dired+/dired+" "\
Tag marked files with an `image-dired' tag, including in marked subdirs.
Like `image-dired-tag-files', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-delete-tag-recursive "dired+/dired+" "\
Remove `image-dired' tag for marked files, including in marked subdirs.
Like `image-dired-delete-tag', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-comment-files-recursive "dired+/dired+" "\
Add comment to marked files in dired, including those in marked subdirs.
Like `image-dired-dired-comment-files' but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-bookmark-recursive "dired+/dired+" "\
Bookmark the marked files, including those in marked subdirs.
Like `diredp-do-bookmark', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P PREFIX)" t nil)

(autoload 'diredp-do-bookmark-dirs-recursive "dired+/dired+" "\
Bookmark this Dired buffer and marked subdirectory Dired buffers, recursively.
Create a Dired bookmark for this directory and for each of its marked
subdirectories.  Handle each of the marked subdirectory similarly:
bookmark it and its marked subdirectories, and so on, recursively.
Name each of these Dired bookmarks with the Dired buffer name.

After creating the Dired bookmarks, create a sequence bookmark, named
`DIRBUF and subdirs', where DIRBUF is the name of the original buffer.
This bookmark represents the whole Dired tree rooted in the directory
where you invoked the command.  Jumping to this sequence bookmark
restores all of the Dired buffers making up the tree, by jumping to
each of their bookmarks.

With a prefix arg, bookmark the marked and unmarked subdirectory Dired
buffers, recursively, that is, ignore markings.

Note:

* If there is more than one Dired buffer for a given subdirectory then
  only the first such is used.

* This command creates new bookmarks.  It never updates or overwrites
  an existing bookmark.

You need library `Bookmark+' for this command.

\(fn IGNORE-MARKS-P &optional MSG-P)" t nil)

(autoload 'diredp-do-bookmark-in-bookmark-file-recursive "dired+/dired+" "\
Bookmark files here and below in BOOKMARK-FILE and save BOOKMARK-FILE.
Like `diredp-do-bookmark-in-bookmark-file', but act recursively on
subdirs.  The files included are those that are marked in the current
Dired buffer, or all files in the directory if none are marked.
Marked subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn BOOKMARK-FILE &optional PREFIX IGNORE-MARKS-P BFILE-BOOKMARKP)" t nil)

(autoload 'diredp-set-bookmark-file-bookmark-for-marked-recursive "dired+/dired+" "\
Bookmark the marked files and create a bookmark-file bookmark for them.
Like `diredp-set-bookmark-file-bookmark-for-marked', but act
recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn BOOKMARK-FILE &optional PREFIX ARG)" t nil)

(autoload 'diredp-do-find-marked-files-recursive "dired+/dired+" "\
Find marked files simultaneously, including those in marked subdirs.
Like `dired-do-find-marked-files', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With (explicit) numeric prefix ARG >= 0, find the files but do not
display them.

With numeric prefix ARG <= 0, ignore all marks - include all files in
this Dired buffer and all subdirs, recursively.

\(fn &optional ARG)" t nil)

(autoload 'diredp-do-query-replace-regexp-recursive "dired+/dired+" "\
Do `query-replace-regexp' of FROM with TO, on all marked files.
If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].

\(fn FROM TO &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-grep-recursive "dired+/dired+" "\
Run `grep' on marked files, including those in marked subdirs.
Like `diredp-do-grep', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn COMMAND-ARGS &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-marked-recursive "dired+/dired+" "\
Open Dired on marked files, including those in marked subdirs.
Like `diredp-marked', but act recursively on subdirs.

See `diredp-do-find-marked-files-recursive' for a description of the
files included.  In particular, if no files are marked here or in a
marked subdir, then all files in the directory are included.

\(fn DIRNAME &optional IGNORE-MARKED-P)" t nil)

(autoload 'diredp-marked-recursive-other-window "dired+/dired+" "\
Same as `diredp-marked-recursive', but uses a different window.

\(fn DIRNAME &optional IGNORE-MARKED-P)" t nil)

(autoload 'diredp-list-marked-recursive "dired+/dired+" "\
List the files marked here and in marked subdirs, recursively.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, all marks are ignored: all files in this Dired
buffer and all descendent directories are included.

You can use `RET' or `mouse-2' to visit any of the files.
If `tooltip-mode' is on then moving the mouse over image-file names
shows image previews.

Non-interactively, non-nil arg PREDICATE is a file-name predicate.
List only the files for which it returns non-nil.

\(fn &optional IGNORE-MARKS-P PREDICATE)" t nil)

(autoload 'diredp-copy-filename-as-kill-recursive "dired+/dired+" "\
Copy names of marked files here and in marked subdirs, to `kill-ring'.
The names are separated by a space.

Like `dired-copy-filename-as-kill', but act recursively on subdirs.
\(Do not copy subdir names themselves.)

With no prefix arg, use relative file names.
With a zero prefix arg, use absolute file names.
With a plain prefix arg (`C-u'), use names relative to the current
Dired directory.  (This might contain slashes if in a subdirectory.)

If on a subdir headerline, use absolute subdir name instead - prefix
arg and marked files are ignored in this case.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

\(fn &optional ARG)" t nil)

(autoload 'diredp-mark-files-regexp-recursive "dired+/dired+" "\
Mark all files matching REGEXP, including those in marked subdirs.
Like `dired-mark-files-regexp' but act recursively on marked subdirs.

The file names to be matched by this command are always absolute -
they include the full directory.  This corresponds to the default
behavior for `dired-mark-files-regexp' with Dired+.  The other
matching possibilities offered by `dired-mark-files-regexp' are not
available for this command.

Directories `.' and `..' are never marked.

A non-negative prefix arg means to UNmark the files instead.

A non-positive prefix arg means to ignore subdir markings and act
instead on ALL subdirs.  That is, mark all matching files in this
directory and all descendant directories.

REGEXP is an Emacs regexp, not a shell wildcard.  Thus, use `\\.o$' for
object files--just `.o' will mark more than you might think.

REGEXP is added to `regexp-search-ring', for regexp search.

Note: If there is more than one Dired buffer for a given subdirectory
then only the first such is used.

\(fn REGEXP &optional MARKER-CHAR IGNORE-MARKS-P)" t nil)

(autoload 'diredp-capitalize-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, by capitalizing them.
Like `diredp-capitalize', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-upcase-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, making them uppercase.
Like `dired-upcase', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-downcase-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, making them lowercase.
Like `dired-downcase', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-apply-function-recursive "dired+/dired+" "\
Apply FUNCTION to the marked files.
Like `diredp-do-apply-function' bit act recursively on subdirs.

The files acted on are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a plain prefix ARG (`C-u'), visit each file and invoke FUNCTION
 with no arguments.
Otherwise, apply FUNCTION to each file name.

Any other prefix arg behaves according to the ARG argument of
`dired-get-marked-files'.  In particular, `C-u C-u' operates on all
files in the Dired buffer.

\(fn FUNCTION &optional ARG)" t nil)

(autoload 'diredp-do-delete-recursive "dired+/dired+" "\
Delete marked (not flagged) files, including in marked subdirs.
Like `dired-do-delete' but act recursively on subdirs.

The files to be deleted are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

\(fn ARG)" t nil)

(autoload 'diredp-do-move-recursive "dired+/dired+" "\
Move marked files, including in marked subdirs, to a given directory.
Like `dired-do-rename', but act recursively on subdirs to pick up the
files to move.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

This means move the marked files of marked subdirs and their marked
subdirs, etc.  It does not mean move or rename the subdirs themselves
recursively.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

Renames any buffers that are visiting the files.

The default suggested for the target directory depends on the value of
`dired-dwim-target', which see.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-copy-recursive "dired+/dired+" "\
Copy marked files, including in marked subdirs, to a given directory.
Like `dired-do-copy', but act recursively on subdirs to pick up the
files to copy.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

This means copy the marked files of marked subdirs and their marked
subdirs, etc.  It does not mean copy the subdirs themselves
recursively.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

Preserves the last-modified date when copying, unless
`dired-copy-preserve-time' is nil.

The default suggested for the target directory depends on the value of
`dired-dwim-target', which see.

This command copies symbolic links by creating new ones, like UNIX
command `cp -d'.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-chmod-recursive "dired+/dired+" "\
Change the mode of the marked files, including those in marked subdirs.
Symbolic modes like `g+w' are allowed.

Note that marked subdirs are not changed.  Their markings are used only
to indicate that some of their files are to be changed.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-touch-recursive "dired+/dired+" "\
Change the timestamp of marked files, including those in marked subdirs.
This calls `touch'.  Like `dired-do-touch', but act recursively on
subdirs.  The subdirs inserted are those that are marked in the
current Dired buffer, or all subdirs in the directory if none are
marked.  Marked subdirectories are handled recursively in the same
way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-redisplay-recursive "dired+/dired+" "\
Redisplay marked file lines, including those in marked subdirs.
Non-nil MSGP means show status messages.
Like `dired-do-redisplay' with no args, but act recursively on
subdirs.

\(fn &optional MSGP)" t nil)

(autoload 'diredp-marked "dired+/dired+" "\
Open Dired on only the marked files or the next N files.
With a non-zero numeric prefix arg N, use the next abs(N) files.
A plain (`C-u'), zero, or negative prefix arg prompts for listing
switches as in command `dired'.

Note that the marked files can include files in inserted
subdirectories, so the Dired buffer that is opened can contain files
from multiple directories in the same tree.

\(fn DIRNAME &optional N SWITCHES)" t nil)

(autoload 'diredp-marked-other-window "dired+/dired+" "\
Same as `diredp-marked', but uses a different window.

\(fn DIRNAME &optional N SWITCHES)" t nil)

(autoload 'diredp-mark/unmark-extension "dired+/dired+" "\
Mark all files with a certain EXTENSION for use in later commands.
A `.' is not automatically prepended to the string entered.
Non-nil prefix argument UNMARK-P means unmark instead of mark.

\(fn EXTENSION &optional UNMARK-P)" t nil)

(autoload 'diredp-mark-files-tagged-all "dired+/dired+" "\
Mark all files that are tagged with *each* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, mark all that are *not* tagged with *any* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional NONE-P PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-none "dired+/dired+" "\
Mark all files that are not tagged with *any* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 no tags at all.
With a prefix arg, mark all that are tagged with *each* tag in TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional ALLP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-some "dired+/dired+" "\
Mark all files that are tagged with *some* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, mark all that are *not* tagged with *all* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMENOTP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-not-all "dired+/dired+" "\
Mark all files that are not tagged with *all* TAGS.
As a special case, if TAGS is empty, then mark the files that have
 no tags at all.
With a prefix arg, mark all that are tagged with *some* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMEP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-regexp "dired+/dired+" "\
Mark files that have at least one tag that matches REGEXP.
With a prefix arg, mark all that are tagged but have no matching tags.
You need library `bookmark+.el' to use this command.

\(fn REGEXP &optional NOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-regexp "dired+/dired+" "\
Unmark files that have at least one tag that matches REGEXP.
With a prefix arg, unmark all that are tagged but have no matching tags.
You need library `bookmark+.el' to use this command.

\(fn REGEXP &optional NOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-all "dired+/dired+" "\
Unmark all files that are tagged with *each* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, unmark all that are *not* tagged with *any* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional NONE-P PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-none "dired+/dired+" "\
Unmark all files that are *not* tagged with *any* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 no tags at all.
With a prefix arg, unmark all that are tagged with *each* tag in TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional ALLP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-some "dired+/dired+" "\
Unmark all files that are tagged with *some* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 any tags at all.
With a prefix arg, unmark all that are *not* tagged with *all* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMENOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-not-all "dired+/dired+" "\
Unmark all files that are *not* tagged with *all* TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 no tags at all.
With a prefix arg, unmark all that are tagged with *some* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMEP PREFIX)" t nil)

(autoload 'diredp-do-tag "dired+/dired+" "\
Tag the marked (or the next prefix argument) files.
You need library `bookmark+.el' to use this command.

Hit `RET' to enter each tag, then hit `RET' again after the last tag.
You can use completion to enter each tag.  Completion is lax: you are
not limited to existing tags.

TAGS is a list of strings.  PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-tag "dired+/dired+" "\
In Dired, add some tags to this file.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-untag "dired+/dired+" "\
Remove some tags from the marked (or the next prefix arg) files.
You need library `bookmark+.el' to use this command.

Hit `RET' to enter each tag, then hit `RET' again after the last tag.
You can use completion to enter each tag.  Completion is lax: you are
not limited to existing tags.

TAGS is a list of strings.  PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-untag "dired+/dired+" "\
In Dired, remove some tags from this file.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-remove-all-tags "dired+/dired+" "\
Remove all tags from the marked (or the next prefix arg) files.
You need library `bookmark+.el' to use this command.

PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-remove-all-tags "dired+/dired+" "\
In Dired, remove all tags from the marked (or next prefix arg) files.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-paste-add-tags "dired+/dired+" "\
Add previously copied tags to the marked (or next prefix arg) files.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-paste-add-tags "dired+/dired+" "\
In Dired, add previously copied tags to this file.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-paste-replace-tags "dired+/dired+" "\
Replace tags for marked (or next prefix arg) files with copied tags.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-paste-replace-tags "dired+/dired+" "\
In Dired, replace tags for this file with tags copied previously.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-set-tag-value "dired+/dired+" "\
Set TAG value to VALUE, for the marked (or next prefix arg) files.
This does not change the TAG name.
You need library `bookmark+.el' to use this command.

PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAG VALUE &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-set-tag-value "dired+/dired+" "\
In Dired, set the value of a tag for this file.
This does not change the tag name.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-mark-autofiles "dired+/dired+" "\
Mark all autofiles, that is, files that have an autofile bookmark.

\(fn)" t nil)

(autoload 'diredp-unmark-autofiles "dired+/dired+" "\
Unmark all autofiles, that is, files that have an autofile bookmark.

\(fn)" t nil)

(autoload 'diredp-mark/unmark-autofiles "dired+/dired+" "\
Mark all autofiles, or unmark if UNMARKP is non-nil.

\(fn &optional UNMARKP)" nil nil)

(autoload 'diredp-do-bookmark "dired+/dired+" "\
Bookmark the marked (or the next prefix argument) files.
Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for the PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.
The bookmarked position is the beginning of the file.
If you use library `bookmark+.el' then the bookmark is an autofile.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-bookmark "dired+/dired+" "\
In Dired, bookmark this file.  See `diredp-do-bookmark'.

\(fn EVENT)" t nil)

(autoload 'diredp-set-bookmark-file-bookmark-for-marked "dired+/dired+" "\
Bookmark the marked files and create a bookmark-file bookmark for them.
The bookmarked position is the beginning of the file.
Jumping to the bookmark-file bookmark loads the set of file bookmarks.
You need library `bookmark+.el' to use this command.

Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

You are also prompted for the bookmark file, BOOKMARK-FILE.  The
default is `.emacs.bmk' in the current directory, but you can enter
any file name, anywhere.

The marked-file bookmarks are added to file BOOKMARK-FILE, but this
command does not make BOOKMARK-FILE the current bookmark file.  To
make it current, just jump to the bookmark-file bookmark created by
this command.  That bookmark (which bookmarks BOOKMARK-FILE) is
defined in that current bookmark file.

Example:

 Bookmark file `~/.emacs.bmk' is current before invoking this command.
 The current (Dired) directory is `/foo/bar'.
 The marked files are bookmarked in the (possibly new) bookmark file
   `/foo/bar/.emacs.bmk'.
 The bookmarks for the marked files have names prefixed by `FOOBAR '.
 The name of the bookmark-file bookmark is `Foobar Files'.
 Bookmark `Foobar Files' is itself in bookmark file `~/.emacs.bmk'.
 Bookmark file `~/.emacs.bmk' is current after invoking this command.

You are prompted for the name of the bookmark-file bookmark, the
BOOKMARK-FILE for the marked-file bookmarks, and a PREFIX string for
each of the marked-file bookmarks.

See also command `diredp-do-bookmark-in-bookmark-file'.

\(fn BOOKMARK-FILE &optional PREFIX ARG)" t nil)

(autoload 'diredp-do-bookmark-in-bookmark-file "dired+/dired+" "\
Bookmark marked files in BOOKMARK-FILE and save BOOKMARK-FILE.
The files bookmarked are the marked files, by default.
The bookmarked position is the beginning of the file.
You are prompted for BOOKMARK-FILE.  The default is `.emacs.bmk' in
the current directory, but you can enter any file name, anywhere.
You need library `bookmark+.el' to use this command.

The marked files are bookmarked in file BOOKMARK-FILE, but this
command does not make BOOKMARK-FILE the current bookmark file.  To
make it current, use `\\[bmkp-switch-bookmark-file]' (`bmkp-switch-bookmark-file').

Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.

Interactively, a prefix argument ARG specifies the files to use
instead of those marked.

 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

See also command `diredp-set-bookmark-file-bookmark-for-marked'.

Non-interactively:

 * Non-nil BFILE-BOOKMARKP means create a bookmark-file bookmark for
   BOOKMARK-FILE.
 * Non-nil FILES is the list of files to bookmark.

\(fn BOOKMARK-FILE &optional PREFIX ARG BFILE-BOOKMARKP FILES)" t nil)

(autoload 'diredp-find-file-reuse-dir-buffer "dired+/dired+" "\
Like `dired-find-file', but reuse Dired buffers.
Unlike `dired-find-alternate-file' this does not use
`find-alternate-file' if the target is not a directory.

\(fn)" t nil)

(autoload 'diredp-mouse-find-file-reuse-dir-buffer "dired+/dired+" "\
Like `diredp-mouse-find-file', but reuse Dired buffers.
Unlike `dired-find-alternate-file' this does not use
`find-alternate-file' if the target is not a directory.

\(fn EVENT)" t nil)

(defalias 'toggle-diredp-find-file-reuse-dir 'diredp-toggle-find-file-reuse-dir)

(autoload 'diredp-toggle-find-file-reuse-dir "dired+/dired+" "\
Toggle whether Dired `find-file' commands reuse directories.
This applies also to `dired-w32-browser' commands and
`diredp-up-directory'.

A prefix arg specifies directly whether or not to reuse.
 If its numeric value is non-negative then reuse; else do not reuse.

To set the behavior as a preference (default behavior), put this in
your ~/.emacs, where VALUE is 1 to reuse or -1 to not reuse:

 (diredp-toggle-find-file-reuse-dir VALUE)

Note: This affects only these commands:

  `dired-find-file'
  `diredp-mouse-find-file'

It does not affect the corresponding `-other-window' commands.  Note
too that, by default, mouse clicks to open files or directories open
in another window: command `diredp-mouse-find-file-other-window', not
`diredp-mouse-find-file'.  If you want a mouse click to reuse a
directory then bind `mouse-2' to `diredp-mouse-find-file' instead.

\(fn FORCE-P)" t nil)

(autoload 'diredp-omit-marked "dired+/dired+" "\
Omit lines of marked files.  Return the number of lines omitted.

\(fn)" t nil)

(autoload 'diredp-omit-unmarked "dired+/dired+" "\
Omit lines of unmarked files.  Return the number of lines omitted.

\(fn)" t nil)

(autoload 'diredp-ediff "dired+/dired+" "\
Compare file at cursor with file FILE2 using `ediff'.
FILE2 defaults to the file at the cursor as well.  If you enter just a
directory name for FILE2, then the file at the cursor is compared with
a file of the same name in that directory.  FILE2 is the second file
given to `ediff'; the file at the cursor is the first.

Try to guess a useful default value for FILE2, as follows:

* If the mark is active, use the file at mark.
* Else if the file at cursor is a autosave file or a backup file, use
  the corresponding base file.
* Else if there is any backup file for the file at point, use the
  newest backup file for it.
* Else use the file at point.

\(fn FILE2)" t nil)

(autoload 'diredp-do-apply-function "dired+/dired+" "\
Apply FUNCTION to the marked files.
With a plain prefix ARG (`C-u'), visit each file and invoke FUNCTION
 with no arguments.
Otherwise, apply FUNCTION to each file name.

Any other prefix arg behaves according to the ARG argument of
`dired-get-marked-files'.  In particular, `C-u C-u' operates on all
files in the Dired buffer.

\(fn FUNCTION &optional ARG)" t nil)

(autoload 'dired-do-compress "dired+/dired+" "\
Compress or uncompress marked (or next prefix argument) files.
A prefix argument ARG specifies files to use instead of marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-byte-compile "dired+/dired+" "\
Byte compile marked Emacs Lisp files.
A prefix argument ARG specifies files to use instead of those marked.
 * An integer means use the next ARG files (previous -ARG, if < 0).
 * Two or more `C-u' (e.g. `C-u C-u') means ignore any marks and use
   all files in the Dired buffer.
 * Any other prefix arg means use the current file.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-load "dired+/dired+" "\
Load the marked Emacs Lisp files.
A prefix argument ARG specifies files to use instead of those marked.
 * An integer means use the next ARG files (previous -ARG, if < 0).
 * Two or more `C-u' (e.g. `C-u C-u') means ignore any marks and use
   all files in the Dired buffer.
 * Any other prefix arg means use the current file.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-search "dired+/dired+" "\
Search through all marked files for a match for REGEXP.
Stops when a match is found.
To continue searching for next match, use command \\[tags-loop-continue].

A prefix arg behaves as follows:
 * An integer means use the next ARG files (previous -ARG, if < 0).
 * Two or more `C-u' (e.g. `C-u C-u') means ignore any marks and use
   all files in the Dired buffer.
 * Any other prefix arg means use the current file.

\(fn REGEXP &optional ARG)" t nil)

(autoload 'dired-do-query-replace-regexp "dired+/dired+" "\
Do `query-replace-regexp' of FROM with TO, on all marked files.
NOTE: A prefix arg for this command acts differently than for other
commands, so that you can use it to request word-delimited matches.

With a prefix argument:
 * An odd number of plain `C-u': act on the marked files, but replace
   only word-delimited matches.
 * More than one plain `C-u': act on all files, ignoring whether any
   are marked.
 * Any other prefix arg: Act on the next numeric-prefix files.

So for example:
 * `C-u C-u C-u': act on all files, replacing word-delimited matches.
 * `C-u 4': act on the next 4 files.  `C-4' means the same thing.
 * `C-u': act on the marked files, replacing word-delimited matches.

If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].

\(fn FROM TO &optional ARG)" t nil)

(autoload 'diredp-do-grep "dired+/dired+" "\
Run `grep' on marked (or next prefix arg) files.
A prefix argument behaves according to the ARG argument of
`dired-get-marked-files'.  In particular, `C-u C-u' operates on all
files in the Dired buffer.

\(fn COMMAND-ARGS)" t nil)

(autoload 'dired-maybe-insert-subdir "dired+/dired+" "\
Move to Dired subdirectory line or subdirectory listing.
This bounces you back and forth between a subdirectory line and its
inserted listing header line.  Using it on a non-directory line in a
subdirectory listing acts the same as using it on the subdirectory
header line.

* If on a subdirectory line, then go to the subdirectory's listing,
  creating it if not yet present.

* If on a subdirectory listing header line or a non-directory file in
  a subdirectory listing, then go to the line for the subdirectory in
  the parent directory listing.

* If on a non-directory file in the top Dired directory listing, do
  nothing.

Subdirectories are listed in the same position as for `ls -lR' output.

With a prefix arg, you can edit the `ls' switches used for this
listing.  Add `R' to the switches to expand the directory tree under a
subdirectory.

Dired remembers the switches you specify with a prefix arg, so
reverting the buffer does not reset them.  However, you might
sometimes need to reset some subdirectory switches after a
`dired-undo'.  You can reset all subdirectory switches to the
default value using \\<dired-mode-map>\\[dired-reset-subdir-switches].  See Info node
`(emacs)Subdir switches' for more details.

\(fn DIRNAME &optional SWITCHES NO-ERROR-IF-NOT-DIR-P)" t nil)

(autoload 'dired-do-find-marked-files "dired+/dired+" "\
Find marked files, displaying all of them simultaneously.
With a prefix ARG >= 0, just find the files but do not show them.

If no prefix ARG, and variable `pop-up-frames' is non-nil, or
if prefix ARG < 0, then each file is displayed in a separate frame.

Otherwise (no prefix ARG and nil `pop-up-frames'), the current window
is split across all marked files, as evenly as possible.  Remaining
lines go to the bottom-most window.  The number of files that can be
displayed this way is restricted by the height of the current window
and `window-min-height'.

Otherwise, a prefix arg behaves according to the ARG argument of
`dired-get-marked-files'.  In particular, `C-u C-u' operates on all
files in the Dired buffer.

To keep the Dired buffer displayed, type \\[split-window-vertically] first.
To display just the marked files, type \\[delete-other-windows] first.

\(fn &optional ARG)" t nil)

(autoload 'diredp-up-directory "dired+/dired+" "\
Run Dired on parent directory of current directory.
Find the parent directory either in this buffer or another buffer.
Creates a buffer if necessary.

With a prefix arg, Dired the parent directory in another window.

On MS Windows, if you are already at the root directory, invoke
`diredp-w32-drives' to visit a navigable list of Windows drives.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'diredp-up-directory-reuse-dir-buffer "dired+/dired+" "\
Like `diredp-up-directory', but reuse Dired buffers.
With a prefix arg, Dired the parent directory in another window.  But
in this case there is no buffer reuse.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'diredp-next-line "dired+/dired+" "\
Move down lines then position cursor at filename.
If `goal-column' is non-nil then put the cursor at that column.
Optional prefix ARG says how many lines to move; default is one line.

If `diredp-wrap-around-flag' is non-nil then wrap around if none is
found before the buffer end (buffer beginning, if ARG is negative).
Otherwise, just move to the buffer limit.

\(fn ARG)" t nil)

(autoload 'diredp-previous-line "dired+/dired+" "\
Move up lines then position cursor at filename.
If `goal-column' is non-nil then put the cursor at that column.
Optional prefix ARG says how many lines to move; default is one line.

If `diredp-wrap-around-flag' is non-nil then wrap around if none is
found before the buffer beginning (buffer end, if ARG is negative).
Otherwise, just move to the buffer limit.

\(fn ARG)" t nil)

(autoload 'diredp-next-dirline "dired+/dired+" "\
Goto ARGth next directory file line.
If `diredp-wrap-around-flag' is non-nil then wrap around if none is
found before the buffer beginning (buffer end, if ARG is negative).
Otherwise, raise an error or, if NO-ERROR-IF-NOT-FOUND is nil, return
nil.

\(fn ARG &optional OPOINT)" t nil)

(autoload 'diredp-prev-dirline "dired+/dired+" "\
Goto ARGth previous directory file line.

\(fn ARG)" t nil)

(autoload 'diredp-next-subdir "dired+/dired+" "\
Go to the next subdirectory, regardless of level.
If ARG = 0 then go to this directory's header line.

If `diredp-wrap-around-flag' is non-nil then wrap around if none is
found before the buffer end (buffer beginning, if ARG is negative).
Otherwise, raise an error or, if NO-ERROR-IF-NOT-FOUND is nil, return
nil.

Non-nil NO-SKIP means do not move to end of header line, and return
the position moved to so far.

\(fn ARG &optional NO-ERROR-IF-NOT-FOUND NO-SKIP)" t nil)

(autoload 'diredp-prev-subdir "dired+/dired+" "\
Go to the previous subdirectory, regardless of level.
When called interactively and not on a subdir line, go to this subdir's line.
Otherwise, this is a mirror image of `diredp-next-subdir'.

\(fn ARG &optional NO-ERROR-IF-NOT-FOUND NO-SKIP)" t nil)

(autoload 'dired-do-flagged-delete "dired+/dired+" "\
In Dired, delete the files flagged for deletion.
NOTE: This deletes flagged, not marked, files.
If arg NO-MSG is non-nil, no message is displayed.

User option `dired-recursive-deletes' controls whether deletion of
non-empty directories is allowed.

\(fn &optional NO-MSG)" t nil)

(autoload 'dired-do-delete "dired+/dired+" "\
Delete all marked (or next ARG) files.
NOTE: This deletes marked, not flagged, files.
`dired-recursive-deletes' controls whether deletion of
non-empty directories is allowed.

\(fn &optional ARG)" t nil)

(autoload 'dired-mark-files-regexp "dired+/dired+" "\
Mark all files matching REGEXP for use in later commands.
`.' and `..' are never marked or unmarked by this command.

Whether to mark or unmark, and what form of file name to match, are
governed by the prefix argument.  For this, a plain (`C-u') or a
double-plain (`C-u C-u') prefix arg is considered only as such - it is
not considered numerically.

Whether to mark or unmark:

 - No prefix arg, a positive, or a negative arg means mark.

 - Plain (`C-u'), double-plain (`C-u C-u'), or zero (e.g. `M-0' means
   unmark.

The form of a file name used for matching:

 - No prefix arg (to mark) or a plain prefix arg (`C-u', to unmark)
   means use the absolute file name, that is, including all directory
   components.

 - A negative arg (e.g. `M--', to mark) or a zero arg (e.g. `M-0', to
   unmark) means use the relative file name (no directory part).

 - A positive arg (e.g. `M-+', to mark) or a double plain arg (`C-u
   C-u', to unmark) means construct the name relative to
   `default-directory'.  For an entry in an inserted subdir listing,
   this means prefix the relative file name (no directory part) with
   the subdir name relative to `default-directory'.

Note that the default matching behavior of this command is different
for Dired+ than it is for vanilla Emacs.  Using a positive prefix arg
or a double plain prefix arg (`C-u C-u' gives you the same behavior as
vanilla Emacs (marking or unmarking, respectively): matching against
names that are relative to the `default-directory'.

What Dired+ offers in addition is the possibility to match against
names that are absolute (no prefix arg or `C-u', to mark or unmark,
respectively) or relative (have no directory part - `M--' or `M-0',
respectively).  The default behavior uses absolute names because it
gives you more flexibility.

REGEXP is an Emacs regexp, not a shell wildcard.  Thus, use `\\.o$'
for object files--just `.o' might mark more than you might expect.

REGEXP is added to `regexp-search-ring', for regexp search.

\(fn REGEXP &optional MARKER-CHAR LOCALP)" t nil)

(autoload 'diredp-capitalize "dired+/dired+" "\
Rename all marked (or next ARG) files by capitalizing them.
Makes the first char of the name uppercase and the others lowercase.

\(fn &optional ARG)" t nil)

(autoload 'diredp-delete-this-file "dired+/dired+" "\
In Dired, delete the file on the cursor line, upon confirmation.
This uses `delete-file'.
If the file is a symlink, remove the symlink.  If the file has
multiple names, it continues to exist with the other names.

For Emacs 24 and later, a prefix arg means that if
`delete-by-moving-to-trash' is non-nil then trash the file instead of
deleting it.

\(fn &optional USE-TRASH-CAN)" t nil)

(autoload 'diredp-capitalize-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line by capitalizing it.
Makes the first char of the name uppercase and the others lowercase.

\(fn)" t nil)

(autoload 'diredp-downcase-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line to lower case.

\(fn)" t nil)

(autoload 'diredp-upcase-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line to upper case.

\(fn)" t nil)

(autoload 'diredp-rename-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-copy-this-file "dired+/dired+" "\
In Dired, copy the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-relsymlink-this-file "dired+/dired+" "\
In Dired, make a relative symbolic link to file on cursor line.

\(fn)" t nil)

(autoload 'diredp-symlink-this-file "dired+/dired+" "\
In Dired, make a symbolic link to the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-hardlink-this-file "dired+/dired+" "\
In Dired, add a name (hard link) to the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-print-this-file "dired+/dired+" "\
In Dired, print the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-grep-this-file "dired+/dired+" "\
In Dired, grep the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-compress-this-file "dired+/dired+" "\
In Dired, compress or uncompress the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-async-shell-command-this-file "dired+/dired+" "\
Run a shell COMMAND asynchronously on the file on the Dired cursor line.
Like `diredp-shell-command-this-file', but adds `&' at the end of
COMMAND to execute it asynchronously.  The command output appears in
buffer `*Async Shell Command*'.

\(fn COMMAND FILELIST)" t nil)

(autoload 'diredp-shell-command-this-file "dired+/dired+" "\
In Dired, run a shell COMMAND on the file on the cursor line.

\(fn COMMAND FILELIST)" t nil)

(autoload 'diredp-bookmark-this-file "dired+/dired+" "\
In Dired, bookmark the file on the cursor line.
See `diredp-do-bookmark'.

\(fn &optional PREFIX)" t nil)

(autoload 'diredp-tag-this-file "dired+/dired+" "\
In Dired, add some tags to the file on the cursor line.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional PREFIX)" t nil)

(autoload 'diredp-untag-this-file "dired+/dired+" "\
In Dired, remove some tags from the file on the cursor line.
With a prefix arg, remove all tags from the file.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-remove-all-tags-this-file "dired+/dired+" "\
In Dired, remove all tags from this file.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-paste-add-tags-this-file "dired+/dired+" "\
In Dired, add previously copied tags to this file.
See `diredp-paste-add-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-paste-replace-tags-this-file "dired+/dired+" "\
In Dired, replace tags for this file with previously copied tags.
See `diredp-paste-replace-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-set-tag-value-this-file "dired+/dired+" "\
In Dired, Set value of TAG to VALUE for this file.
See `diredp-set-tag-value'.
You need library `bookmark+.el' to use this command.

\(fn TAG VALUE &optional PREFIX MSGP)" t nil)

(autoload 'diredp-copy-tags-this-file "dired+/dired+" "\
In Dired, copy the tags from this file, so you can paste them to another.
See `diredp-copy-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-mouse-copy-tags "dired+/dired+" "\
In Dired, copy the tags from this file, so you can paste them to another.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(defalias 'diredp-show-metadata 'diredp-describe-autofile)

(autoload 'diredp-describe-autofile "dired+/dired+" "\
Show the metadata for the file of the current line.
The file must name an autofile bookmark.  The metadata is the bookmark
information.

With a prefix argument, show the internal definition of the bookmark.

You need library `bookmark+.el' for this command.

\(fn &optional INTERNAL-FORM-P)" t nil)

(defalias 'diredp-show-metadata-for-marked 'diredp-describe-marked-autofiles)

(autoload 'diredp-describe-marked-autofiles "dired+/dired+" "\
Show metadata for the marked files.
If no file is marked, describe ALL autofiles in this directory.
With a prefix argument, show the internal (Lisp) form of the metadata.

You need library `bookmark+.el' for this command.

\(fn &optional INTERNAL-FORM-P)" t nil)

(autoload 'diredp-byte-compile-this-file "dired+/dired+" "\
In Dired, byte compile the (Lisp source) file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-load-this-file "dired+/dired+" "\
In Dired, load the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-chmod-this-file "dired+/dired+" "\
In Dired, change the mode of the file on the cursor line.

\(fn)" t nil)

(autoload 'dired-mark-sexp "dired+/dired+" "\
Mark files for which PREDICATE returns non-nil.
With a prefix arg, unmark or unflag those files instead.

PREDICATE is a lisp sexp that can refer to the following symbols as
variables:

    `mode'   [string]  file permission bits, e.g. \"-rw-r--r--\"
    `nlink'  [integer] number of links to file
    `size'   [integer] file size in bytes
    `uid'    [string]  owner
    `gid'    [string]  group (If the gid is not displayed by `ls',
                       this will still be set (to the same as uid))
    `time'   [string]  the time that `ls' displays, e.g. \"Feb 12 14:17\"
    `name'   [string]  the name of the file
    `sym'    [string]  if file is a symbolic link, the linked-to name,
                       else \"\"
    `inode'  [integer] the inode of the file (only for `ls -i' output)
    `blks'   [integer] the size of the file for `ls -s' output
                       (ususally in blocks or, with `-k', in Kbytes)
Examples:
  Mark zero-length files: `(equal 0 size)'
  Mark files last modified on Feb 2: `(string-match \"Feb  2\" time)'
  Mark uncompiled Emacs Lisp files (`.el' file without a `.elc' file):
     First, Dired just the source files: `dired *.el'.
     Then, use \\[dired-mark-sexp] with this sexp:
          (not (file-exists-p (concat name \"c\")))

There's an ambiguity when a single integer not followed by a unit
prefix precedes the file mode: It is then parsed as inode number
and not as block size (this always works for GNU coreutils ls).

Another limitation is that the uid field is needed for the
function to work correctly.  In particular, the field is not
present for some values of `ls-lisp-emulation'.

This function operates only on the buffer content and does not
refer at all to the underlying file system.  Contrast this with
`find-dired', which might be preferable for the task at hand.

\(fn PREDICATE &optional UNMARK-P)" t nil)

(autoload 'diredp-mark-region-files "dired+/dired+" "\
Mark all of the files in the current region (if it is active).
With non-nil prefix arg, unmark them instead.

\(fn &optional UNMARK-P)" t nil)

(autoload 'diredp-unmark-region-files "dired+/dired+" "\
Unmark all of the files in the current region (if it is active).
With non-nil prefix arg, mark them instead.

\(fn &optional MARK-P)" t nil)

(autoload 'diredp-flag-region-files-for-deletion "dired+/dired+" "\
Flag all of the files in the current region (if it is active) for deletion.

\(fn)" t nil)

(autoload 'diredp-toggle-marks-in-region "dired+/dired+" "\
Toggle marks in the region.

\(fn START END)" t nil)

(autoload 'diredp-mouse-3-menu "dired+/dired+" "\
Dired pop-up `mouse-3' menu, for files in selection or current line.

\(fn EVENT)" t nil)

(autoload 'diredp-find-file-other-frame "dired+/dired+" "\
In Dired, visit this file or directory in another frame.

\(fn)" t nil)

(autoload 'diredp-mouse-find-file-other-frame "dired+/dired+" "\
In Dired, visit file or directory clicked on in another frame.

\(fn EVENT)" t nil)

(autoload 'dired-mouse-find-file-other-window "dired+/dired+" "\
In Dired, visit the file or directory name you click on.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-find-file "dired+/dired+" "\
Replace Dired in its window by this file or directory.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-view-file "dired+/dired+" "\
Examine this file in view mode, returning to Dired when done.
When file is a directory, show it in this buffer if it is inserted;
otherwise, display it in another buffer.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-ediff "dired+/dired+" "\
Compare this file (pointed by mouse) with file FILE2 using `ediff'.
FILE2 defaults to this file as well.  If you enter just a directory
name for FILE2, then this file is compared with a file of the same
name in that directory.  FILE2 is the second file given to `ediff';
this file is the first given to it.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-diff "dired+/dired+" "\
Compare this file (pointed by mouse) with file FILE2 using `diff'.
FILE2 defaults to the file at the mark.  This file is the first file
given to `diff'.  With prefix arg, prompt for second arg SWITCHES,
which are options for `diff'.

\(fn EVENT &optional SWITCHES)" t nil)

(autoload 'diredp-mouse-backup-diff "dired+/dired+" "\
Diff this file with its backup file or vice versa.
Use the latest backup, if there are several numerical backups.
If this file is a backup, diff it with its original.
The backup file is the first file given to `diff'.
With prefix arg, prompt for SWITCHES which are the options for `diff'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark "dired+/dired+" "\
In Dired, mark this file.
If on a subdir headerline, mark all its files except `.' and `..'.

Use \\[dired-unmark-all-files] to remove all marks,
and \\[dired-unmark] on a subdir to remove the marks in this subdir.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-unmark "dired+/dired+" "\
In Dired, unmark this file.
If looking at a subdir, unmark all its files except `.' and `..'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark/unmark "dired+/dired+" "\
Mark/unmark file or directory at mouse EVENT.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark-region-files "dired+/dired+" "\
Mark files between point and the mouse.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark/unmark-mark-region-files "dired+/dired+" "\
Mark/unmark file or mark files in region.
If the file the cursor is on is marked, then mark all files between it
 and the line clicked (included).
Otherwise (cursor's file is unmarked):
 If the file clicked is marked, then unmark it.
 If it is unmarked, then mark it.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-flag-file-deletion "dired+/dired+" "\
In Dired, flag this file for deletion.
If on a subdir headerline, mark all its files except `.' and `..'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-copy "dired+/dired+" "\
In Dired, copy this file.
This normally preserves the last-modified date when copying.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-rename "dired+/dired+" "\
In Dired, rename this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-upcase "dired+/dired+" "\
In Dired, rename this file to upper case.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-downcase "dired+/dired+" "\
In Dired, rename this file to lower case.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-delete "dired+/dired+" "\
In Dired, delete this file, upon confirmation.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-shell-command "dired+/dired+" "\
Run a shell COMMAND on this file.
If there is output, it goes to a separate buffer.

No automatic redisplay of Dired buffers is attempted, as there's no
telling what files the command may have changed.  Type
\\[dired-do-redisplay] to redisplay.

The shell command has the top level directory as working directory, so
output files usually are created there instead of in a subdir.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-symlink "dired+/dired+" "\
Make symbolic link to this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-hardlink "dired+/dired+" "\
Make hard link (alias) to this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-print "dired+/dired+" "\
Print this file.
Uses the shell command coming from variables `lpr-command' and
`lpr-switches' as default.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-grep "dired+/dired+" "\
Run grep against this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-compress "dired+/dired+" "\
Compress or uncompress this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-byte-compile "dired+/dired+" "\
Byte compile this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-load "dired+/dired+" "\
Load this Emacs Lisp file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-chmod "dired+/dired+" "\
Change the mode of this file.
This calls chmod, so symbolic modes like `g+w' are allowed.

\(fn EVENT)" t nil)

(autoload 'diredp-describe-mode "dired+/dired+" "\
Describe Dired mode, including Dired+ features.
This is `describe-mode' plus a description of Dired+ features.
For just the latter, use \\<dired-mode-map>`\\[diredp-dired-plus-help]'.

\(fn &optional BUFFER)" t nil)

(autoload 'diredp-dired-plus-help "dired+/dired+" "\
Describe Dired+.

\(fn)" t nil)

(autoload 'diredp-send-bug-report "dired+/dired+" "\
Send a bug report about a Dired+ problem.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-connect" "ein/lisp/ein-connect.el"
;;;;;;  (22278 10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-connect.el

(autoload 'ein:connect-to-notebook-command "ein/lisp/ein-connect" "\
Connect to notebook.  When the prefix argument is given,
you can choose any notebook on your server including the ones
not yet opened.  Otherwise, already chose from already opened
notebooks.

\(fn &optional NOT-YET-OPENED)" t nil)

(autoload 'ein:connect-to-notebook "ein/lisp/ein-connect" "\
Connect any buffer to notebook and its kernel.

\(fn NBPATH &optional BUFFER NO-RECONNECTION)" t nil)

(autoload 'ein:connect-to-notebook-buffer "ein/lisp/ein-connect" "\
Connect any buffer to opened notebook and its kernel.

\(fn BUFFER-OR-NAME)" t nil)

(autoload 'ein:connect-buffer-to-notebook "ein/lisp/ein-connect" "\
Connect BUFFER to NOTEBOOK.

\(fn NOTEBOOK &optional BUFFER NO-RECONNECTION)" nil nil)

(autoload 'ein:connect-to-default-notebook "ein/lisp/ein-connect" "\
Connect to the default notebook specified by
`ein:connect-default-notebook'.  Set this to `python-mode-hook'
to automatically connect any python-mode buffer to the
notebook.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-console" "ein/lisp/ein-console.el"
;;;;;;  (22278 10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-console.el

(autoload 'ein:console-open "ein/lisp/ein-console" "\
Open IPython console.
To use this function, `ein:console-security-dir' and
`ein:console-args' must be set properly.
This function works best with the new python.el_ which is shipped
with Emacs 24.2 or later.  If you don't have it, this function
opens a \"plain\" command line interpreter (comint) buffer where
you cannot use fancy stuff such as TAB completion.
It should be possible to support python-mode.el.  Patches are welcome!

.. _python.el: https://github.com/fgallina/python.el

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-dev" "ein/lisp/ein-dev.el" (22278
;;;;;;  10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-dev.el

(autoload 'ein:dev-insert-mode-map "ein/lisp/ein-dev" "\
Insert mode-map into rst document.  For README.rst.

\(fn MAP-STRING)" nil nil)

(autoload 'ein:dev-start-debug "ein/lisp/ein-dev" "\
Enable EIN debugging support.
When the prefix argument is given, debugging support for websocket
callback (`websocket-callback-debug-on-error') is enabled.

\(fn &optional WS-CALLBACK)" t nil)

(autoload 'ein:dev-stop-debug "ein/lisp/ein-dev" "\
Disable debugging support enabled by `ein:dev-start-debug'.

\(fn)" t nil)

(autoload 'ein:dev-bug-report-template "ein/lisp/ein-dev" "\
Open a buffer with bug report template.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-helm" "ein/lisp/ein-helm.el"
;;;;;;  (22278 10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-helm.el

(autoload 'anything-ein-kernel-history "ein/lisp/ein-helm" "\
Search kernel execution history then insert the selected one.

\(fn)" t nil)

(autoload 'helm-ein-kernel-history "ein/lisp/ein-helm" "\
Search kernel execution history then insert the selected one.

\(fn)" t nil)

(autoload 'anything-ein-notebook-buffers "ein/lisp/ein-helm" "\
Choose opened notebook using anything.el interface.

\(fn)" t nil)

(autoload 'helm-ein-notebook-buffers "ein/lisp/ein-helm" "\
Choose opened notebook using helm interface.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-iexec" "ein/lisp/ein-iexec.el"
;;;;;;  (22278 10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-iexec.el

(autoload 'ein:iexec-mode "ein/lisp/ein-iexec" "\
Instant cell execution minor mode.
Code cell at point will be automatically executed after any
change in its input area.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-ipynb-mode" "ein/lisp/ein-ipynb-mode.el"
;;;;;;  (22278 10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-ipynb-mode.el

(autoload 'ein:ipynb-mode "ein/lisp/ein-ipynb-mode" "\
A simple mode for ipynb file.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '(".*\\.ipynb\\'" . ein:ipynb-mode))

;;;***

;;;### (autoloads nil "ein/lisp/ein-jedi" "ein/lisp/ein-jedi.el"
;;;;;;  (22278 10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-jedi.el

(autoload 'ein:jedi-complete "ein/lisp/ein-jedi" "\
Run completion using candidates calculated by EIN and Jedi.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'ein:jedi-dot-complete "ein/lisp/ein-jedi" "\
Insert \".\" and run `ein:jedi-complete'.

\(fn)" t nil)

(autoload 'ein:jedi-setup "ein/lisp/ein-jedi" "\
Setup auto-completion using EIN and Jedi.el_ together.

Jedi.el_ is a Python auto-completion library for Emacs.
To use EIN and Jedi together, add the following in your Emacs setup.::

  (add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

.. _Jedi.el: https://github.com/tkf/emacs-jedi

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-junk" "ein/lisp/ein-junk.el"
;;;;;;  (22278 10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-junk.el

(autoload 'ein:junk-new "ein/lisp/ein-junk" "\
Open a notebook to try random thing.
Notebook name is determined based on
`ein:junk-notebook-name-template'.

When prefix argument is given, it asks URL or port to use.

\(fn NAME KERNELSPEC URL-OR-PORT)" t nil)

(autoload 'ein:junk-rename "ein/lisp/ein-junk" "\
Rename the current notebook based on `ein:junk-notebook-name-template'
and save it immediately.

\(fn NAME)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-kernel" "ein/lisp/ein-kernel.el"
;;;;;;  (22278 10877 836691 643000))
;;; Generated autoloads from ein/lisp/ein-kernel.el

(defalias 'ein:kernel-url-or-port 'ein:$kernel-url-or-port)

(defalias 'ein:kernel-id 'ein:$kernel-kernel-id)

;;;***

;;;### (autoloads nil "ein/lisp/ein-multilang" "ein/lisp/ein-multilang.el"
;;;;;;  (22278 10877 840691 643000))
;;; Generated autoloads from ein/lisp/ein-multilang.el

(autoload 'ein:notebook-multilang-mode "ein/lisp/ein-multilang" "\
Notebook mode with multiple language fontification.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-notebook" "ein/lisp/ein-notebook.el"
;;;;;;  (22278 10877 840691 643000))
;;; Generated autoloads from ein/lisp/ein-notebook.el

(defalias 'ein:notebook-name 'ein:$notebook-notebook-name)

;;;***

;;;### (autoloads nil "ein/lisp/ein-notebooklist" "ein/lisp/ein-notebooklist.el"
;;;;;;  (22278 10877 840691 643000))
;;; Generated autoloads from ein/lisp/ein-notebooklist.el

(autoload 'ein:notebooklist-open "ein/lisp/ein-notebooklist" "\
Open notebook list buffer.

\(fn &optional URL-OR-PORT PATH NO-POPUP)" t nil)

(autoload 'ein:notebooklist-reload "ein/lisp/ein-notebooklist" "\
Reload current Notebook list.

\(fn &optional NOTEBOOKLIST)" t nil)

(autoload 'ein:notebooklist-new-notebook "ein/lisp/ein-notebooklist" "\
Ask server to create a new notebook and open it in a new buffer.

\(fn &optional URL-OR-PORT KERNELSPEC PATH CALLBACK CBARGS)" t nil)

(autoload 'ein:notebooklist-new-notebook-with-name "ein/lisp/ein-notebooklist" "\
Open new notebook and rename the notebook.

\(fn NAME KERNELSPEC URL-OR-PORT &optional PATH)" t nil)

(autoload 'ein:notebooklist-list-notebooks "ein/lisp/ein-notebooklist" "\
Return a list of notebook path (NBPATH).  Each element NBPATH
is a string of the format \"URL-OR-PORT/NOTEBOOK-NAME\".

\(fn)" nil nil)

(autoload 'ein:notebooklist-open-notebook-global "ein/lisp/ein-notebooklist" "\
Choose notebook from all opened notebook list and open it.
Notebook is specified by a string NBPATH whose format is
\"URL-OR-PORT/NOTEBOOK-NAME\".

When used in lisp, CALLBACK and CBARGS are passed to `ein:notebook-open'.

\(fn NBPATH &optional CALLBACK CBARGS)" t nil)

(autoload 'ein:notebooklist-load "ein/lisp/ein-notebooklist" "\
Load notebook list but do not pop-up the notebook list buffer.

For example, if you want to load notebook list when Emacs starts,
add this in the Emacs initialization file::

  (add-to-hook 'after-init-hook 'ein:notebooklist-load)

or even this (if you want fast Emacs start-up)::

  ;; load notebook list if Emacs is idle for 3 sec after start-up
  (run-with-idle-timer 3 nil #'ein:notebooklist-load)

You should setup `ein:url-or-port' or `ein:default-url-or-port'
in order to make this code work.

See also:
`ein:connect-to-default-notebook', `ein:connect-default-notebook'.

\(fn &optional URL-OR-PORT)" nil nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-org" "ein/lisp/ein-org.el" (22278
;;;;;;  10877 840691 643000))
;;; Generated autoloads from ein/lisp/ein-org.el

(autoload 'ein:org-open "ein/lisp/ein-org" "\
Open IPython notebook specified by LINK-PATH.
This function is to be used for FOLLOW function of
`org-add-link-type'.

\(fn LINK-PATH)" nil nil)

(autoload 'ein:org-store-link "ein/lisp/ein-org" "\
Call `org-store-link-props' when in notebook buffer.
This function is to be used for `org-store-link-functions'.

Examples::

  ipynb:(:url-or-port 8888 :name \"My_Notebook\")
  ipynb:(:url-or-port \"http://notebook-server\" :name \"My_Notebook\")

Note that spaces will be escaped in org files.

As how IPython development team supports multiple directory in
IPython notebook server is unclear, it is not easy to decide the
format for notebook links.  Current approach is to use
S-expression based (rather verbose) serialization, so that
extending link spec without loosing backward compatibility is
easier.  For the examples of link format in general, see Info
node `(org) External links' and Info node `(org) Search options'

\(fn)" nil nil)

(eval-after-load "org" '(progn (org-add-link-type "ipynb" 'ein:org-open) (add-hook 'org-store-link-functions 'ein:org-store-link)))

;;;***

;;;### (autoloads nil "ein/lisp/ein-pseudo-console" "ein/lisp/ein-pseudo-console.el"
;;;;;;  (22278 10877 840691 643000))
;;; Generated autoloads from ein/lisp/ein-pseudo-console.el

(autoload 'ein:pseudo-console-mode "ein/lisp/ein-pseudo-console" "\
Pseudo console mode.  Hit RET to execute code.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-shared-output" "ein/lisp/ein-shared-output.el"
;;;;;;  (22278 10877 840691 643000))
;;; Generated autoloads from ein/lisp/ein-shared-output.el

(autoload 'ein:shared-output-pop-to-buffer "ein/lisp/ein-shared-output" "\
Open shared output buffer.

\(fn)" t nil)

(autoload 'ein:shared-output-show-code-cell-at-point "ein/lisp/ein-shared-output" "\
Show code cell at point in shared-output buffer.
It is useful when the output of the cell at point is truncated.
See also `ein:cell-max-num-outputs'.

\(fn)" t nil)

(autoload 'ein:shared-output-eval-string "ein/lisp/ein-shared-output" "\
Evaluate a piece of code.  Prompt will appear asking the code to run.
This is handy when you want to execute something quickly without
making a cell.  If the code outputs something, it will go to the
shared output buffer.  You can open the buffer by the command
`ein:shared-output-pop-to-buffer'.

.. ARGS is passed to `ein:kernel-execute'.  Unlike `ein:kernel-execute',
   `:silent' is `nil' by default.

\(fn CODE &optional POPUP VERBOSE KERNEL &rest ARGS)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-traceback" "ein/lisp/ein-traceback.el"
;;;;;;  (22278 10877 840691 643000))
;;; Generated autoloads from ein/lisp/ein-traceback.el

(autoload 'ein:tb-show "ein/lisp/ein-traceback" "\
Show full traceback in traceback viewer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (22283 14250
;;;;;;  775610 917000))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (22283 14250 771610 917000))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (22283 14250 771610 917000))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (22283 14250 775610 917000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ggtags/ggtags" "ggtags/ggtags.el" (22296 29708
;;;;;;  644332 740000))
;;; Generated autoloads from ggtags/ggtags.el

(autoload 'ggtags-find-project "ggtags/ggtags" "\


\(fn)" nil nil)

(autoload 'ggtags-find-tag-dwim "ggtags/ggtags" "\
Find NAME by context.
If point is at a definition tag, find references, and vice versa.
If point is at a line that matches `ggtags-include-pattern', find
the include file instead.

When called interactively with a prefix arg, always find
definition tags.

\(fn NAME &optional WHAT)" t nil)

(autoload 'ggtags-mode "ggtags/ggtags" "\
Toggle Ggtags mode on or off.
With a prefix argument ARG, enable Ggtags mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.
\\{ggtags-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'ggtags-build-imenu-index "ggtags/ggtags" "\
A function suitable for `imenu-create-index-function'.

\(fn)" nil nil)

(autoload 'ggtags-try-complete-tag "ggtags/ggtags" "\
A function suitable for `hippie-expand-try-functions-list'.

\(fn OLD)" nil nil)

;;;***

;;;### (autoloads nil "jedi/jedi" "jedi/jedi.el" (22277 60269 400980
;;;;;;  759000))
;;; Generated autoloads from jedi/jedi.el

(autoload 'jedi:ac-setup "jedi/jedi" "\
Add Jedi AC sources to `ac-sources'.

If auto-completion is all you need, you can call this function instead
of `jedi:setup', like this::

   (add-hook 'python-mode-hook 'jedi:ac-setup)

Note that this function calls `auto-complete-mode' if it is not
already enabled, for people who don't call `global-auto-complete-mode'
in their Emacs configuration.

\(fn)" t nil)

(autoload 'jedi:complete "jedi/jedi" "\
Complete code at point.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:auto-complete-mode "jedi/jedi" "\


\(fn)" nil nil)

(setq jedi:setup-function #'jedi:ac-setup jedi:mode-function #'jedi:auto-complete-mode)

;;;***

;;;### (autoloads nil "jedi/jedi-core" "jedi/jedi-core.el" (22277
;;;;;;  60269 400980 759000))
;;; Generated autoloads from jedi/jedi-core.el

(autoload 'jedi:start-dedicated-server "jedi/jedi-core" "\
Start Jedi server dedicated to this buffer.
This is useful, for example, when you want to use different
`sys.path' for some buffer.  When invoked as an interactive
command, it asks you how to start the Jedi server.  You can edit
the command in minibuffer to specify the way Jedi server run.

If you want to setup how Jedi server is started programmatically
per-buffer/per-project basis, make `jedi:server-command' and
`jedi:server-args' buffer local and set it in `python-mode-hook'.
See also: `jedi:server-args'.

\(fn COMMAND)" t nil)

(autoload 'helm-jedi-related-names "jedi/jedi-core" "\
Find related names of the object at point using `helm' interface.

\(fn)" t nil)

(autoload 'anything-jedi-related-names "jedi/jedi-core" "\
Find related names of the object at point using `anything' interface.

\(fn)" t nil)

(autoload 'jedi:setup "jedi/jedi-core" "\
Fully setup jedi.el for current buffer.
It setups `ac-sources' or `company-backends' and turns
`jedi-mode' on.

This function is intended to be called from `python-mode-hook',
like this::

       (add-hook 'python-mode-hook 'jedi:setup)

You can also call this function as a command, to quickly test
what jedi can do.

\(fn)" t nil)

(autoload 'jedi:install-server "jedi/jedi-core" "\
This command installs Jedi server script jediepcserver.py in a
Python environment dedicated to Emacs.  By default, the
environment is at ``~/.emacs.d/.python-environments/default/``.
This environment is automatically created by ``virtualenv`` if it
does not exist.

Run this command (i.e., type ``M-x jedi:install-server RET``)
whenever Jedi.el shows a message to do so.  It is a good idea to
run this every time after you update Jedi.el to sync version of
Python modules used by Jedi.el and Jedi.el itself.

You can modify the location of the environment by changing
`jedi:environment-root' and/or `python-environment-directory'.  More
specifically, Jedi.el will install Python modules under the directory
``PYTHON-ENVIRONMENT-DIRECTORY/JEDI:ENVIRONMENT-ROOT``.  Note that you
need command line program ``virtualenv``.  If you have the command in
an unusual location, use `python-environment-virtualenv' to specify the
location.

.. NOTE:: jediepcserver.py is installed in a virtual environment but it
   does not mean Jedi.el cannot recognize the modules in virtual
   environment you are using for your Python development.  Jedi
   EPC server recognize the virtualenv it is in (i.e., the
   environment variable ``VIRTUAL_ENV`` in your Emacs) and then
   add modules in that environment to its ``sys.path``.  You can
   also add ``--virtual-env PATH/TO/ENV`` to `jedi:server-args'
   to include modules of virtual environment even you launch
   Emacs outside of the virtual environment.

.. NOTE:: It is highly recommended to use this command to install
   Python modules for Jedi.el.  You still can install Python
   modules used by Jedi.el manually.  However, you are then
   responsible for keeping Jedi.el and Python modules compatible.

See also:

- https://github.com/tkf/emacs-jedi/pull/72
- https://github.com/tkf/emacs-jedi/issues/140#issuecomment-37358527

\(fn)" t nil)

(autoload 'jedi:install-server-block "jedi/jedi-core" "\
Blocking version `jedi:install-server'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "js2-mode/js2-imenu-extras" "js2-mode/js2-imenu-extras.el"
;;;;;;  (22357 19891 324425 908000))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-mode/js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (22357 19891 332425 909000))
;;; Generated autoloads from js2-mode/js2-mode.el

(autoload 'js2-highlight-unused-variables-mode "js2-mode/js2-mode" "\
Toggle highlight of unused variables.

\(fn &optional ARG)" t nil)

(autoload 'js2-minor-mode "js2-mode/js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `js-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

(autoload 'js2-jsx-mode "js2-mode/js2-mode" "\
Major mode for editing JSX code.

To customize the indentation for this mode, set the SGML offset
variables (`sgml-basic-offset' et al) locally, like so:

  (defun set-jsx-indentation ()
    (setq-local sgml-basic-offset js2-basic-offset))
  (add-hook 'js2-jsx-mode-hook #'set-jsx-indentation)

\(fn)" t nil)

;;;***

;;;### (autoloads nil "let-alist/let-alist" "let-alist/let-alist.el"
;;;;;;  (22185 31872 38070 0))
;;; Generated autoloads from let-alist/let-alist.el

(autoload 'let-alist "let-alist/let-alist" "\
Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq 'title alist)))
        (.body  (cdr (assq 'body alist)))
        (.site  (cdr (assq 'site alist)))
        (.site.contents (cdr (assq 'contents (cdr (assq 'site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

\(fn ALIST &rest BODY)" nil t)

(put 'let-alist 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil "markdown-mode/markdown-mode" "markdown-mode/markdown-mode.el"
;;;;;;  (22218 54785 85602 856000))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/htmlize" "org-mode/contrib/lisp/htmlize.el"
;;;;;;  (22366 14813 213885 363000))
;;; Generated autoloads from org-mode/contrib/lisp/htmlize.el

(autoload 'htmlize-buffer "org-mode/contrib/lisp/htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "org-mode/contrib/lisp/htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "org-mode/contrib/lisp/htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "org-mode/contrib/lisp/htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "org-mode/contrib/lisp/htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-annotate-file" "org-mode/contrib/lisp/org-annotate-file.el"
;;;;;;  (22366 14813 213885 363000))
;;; Generated autoloads from org-mode/contrib/lisp/org-annotate-file.el

(autoload 'org-annotate-file "org-mode/contrib/lisp/org-annotate-file" "\
Visit `org-annotate-file-storage-file` and add a new annotation section.
The annotation is opened at the new section which will be referencing
the point in the current file.

\(fn)" t nil)

(autoload 'org-annotate-file-show-section "org-mode/contrib/lisp/org-annotate-file" "\
Add or show annotation entry in STORAGE-FILE and return the buffer.
The annotation will link to ANNOTATED-BUFFER if specified,
  otherwise the current buffer is used.

\(fn STORAGE-FILE &optional ANNOTATED-BUFFER)" nil nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-bullets" "org-mode/contrib/lisp/org-bullets.el"
;;;;;;  (22366 14813 213885 363000))
;;; Generated autoloads from org-mode/contrib/lisp/org-bullets.el

(autoload 'org-bullets-mode "org-mode/contrib/lisp/org-bullets" "\
UTF-8 bullets for `org-mode'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-contacts" "org-mode/contrib/lisp/org-contacts.el"
;;;;;;  (22366 14813 213885 363000))
;;; Generated autoloads from org-mode/contrib/lisp/org-contacts.el

(autoload 'org-contacts "org-mode/contrib/lisp/org-contacts" "\
Create agenda view for contacts matching NAME.

\(fn NAME)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-eldoc" "org-mode/contrib/lisp/org-eldoc.el"
;;;;;;  (22366 14813 217885 363000))
;;; Generated autoloads from org-mode/contrib/lisp/org-eldoc.el

(autoload 'org-eldoc-load "org-mode/contrib/lisp/org-eldoc" "\
Set up org-eldoc documentation function.

\(fn)" t nil)

(add-hook 'org-mode-hook #'org-eldoc-load)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-link-edit" "org-mode/contrib/lisp/org-link-edit.el"
;;;;;;  (22366 14813 241885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/org-link-edit.el

(autoload 'org-link-edit-forward-slurp "org-mode/contrib/lisp/org-link-edit" "\
Slurp N trailing blobs into link's description.

  The [[http://orgmode.org/][Org mode]] site

                        |
                        v

  The [[http://orgmode.org/][Org mode site]]

A blob is a block of non-whitespace characters.  When slurping
forward, trailing punctuation characters are not considered part
of a blob.

After slurping, return the slurped text and move point to the
beginning of the link.

If N is negative, slurp leading blobs instead of trailing blobs.

\(fn &optional N)" t nil)

(autoload 'org-link-edit-backward-slurp "org-mode/contrib/lisp/org-link-edit" "\
Slurp N leading blobs into link's description.

  The [[http://orgmode.org/][Org mode]] site

                        |
                        v

  [[http://orgmode.org/][The Org mode]] site

A blob is a block of non-whitespace characters.

After slurping, return the slurped text and move point to the
beginning of the link.

If N is negative, slurp trailing blobs instead of leading blobs.

\(fn &optional N)" t nil)

(autoload 'org-link-edit-forward-barf "org-mode/contrib/lisp/org-link-edit" "\
Barf N trailing blobs from link's description.

  The [[http://orgmode.org/][Org mode]] site

                        |
                        v

  The [[http://orgmode.org/][Org]] mode site

A blob is a block of non-whitespace characters.

After barfing, return the barfed text and move point to the
beginning of the link.

If N is negative, barf leading blobs instead of trailing blobs.

\(fn &optional N)" t nil)

(autoload 'org-link-edit-backward-barf "org-mode/contrib/lisp/org-link-edit" "\
Barf N leading blobs from link's description.

  The [[http://orgmode.org/][Org mode]] site

                        |
                        v

  The Org [[http://orgmode.org/][mode]] site

A blob is a block of non-whitespace characters.

After barfing, return the barfed text and move point to the
beginning of the link.

If N is negative, barf trailing blobs instead of leading blobs.

\(fn &optional N)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-passwords" "org-mode/contrib/lisp/org-passwords.el"
;;;;;;  (22366 14813 241885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/org-passwords.el

(autoload 'org-passwords-mode "org-mode/contrib/lisp/org-passwords" "\
Mode for storing passwords

\(fn)" t nil)

(autoload 'org-passwords "org-mode/contrib/lisp/org-passwords" "\
Open the password file. Open the password file defined by the
variable `org-password-file' in read-only mode and kill that
buffer later according to the value of the variable
`org-passwords-time-opened'. It also adds the `org-password-file'
to the auto-mode-alist so that it is opened with its mode being
`org-passwords-mode'.

With prefix arg ARG, the command does not set up a timer to kill the buffer.

With a double prefix arg \\[universal-argument] \\[universal-argument], open the file for editing.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-registry" "org-mode/contrib/lisp/org-registry.el"
;;;;;;  (22366 14813 241885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/org-registry.el

(autoload 'org-registry-show "org-mode/contrib/lisp/org-registry" "\
Show Org files where there are links pointing to the current
buffer.

\(fn &optional VISIT)" t nil)

(autoload 'org-registry-visit "org-mode/contrib/lisp/org-registry" "\
If an Org file contains a link to the current location, visit
this file.

\(fn)" t nil)

(autoload 'org-registry-initialize "org-mode/contrib/lisp/org-registry" "\
Initialize `org-registry-alist'.
If FROM-SCRATCH is non-nil or the registry does not exist yet,
create a new registry from scratch and eval it. If the registry
exists, eval `org-registry-file' and make it the new value for
`org-registry-alist'.

\(fn &optional FROM-SCRATCH)" t nil)

(autoload 'org-registry-insinuate "org-mode/contrib/lisp/org-registry" "\
Call `org-registry-update' after saving in Org-mode.
Use with caution.  This could slow down things a bit.

\(fn)" t nil)

(autoload 'org-registry-update "org-mode/contrib/lisp/org-registry" "\
Update the registry for the current Org file.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-screenshot" "org-mode/contrib/lisp/org-screenshot.el"
;;;;;;  (22366 14813 241885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/org-screenshot.el

(autoload 'org-screenshot-take "org-mode/contrib/lisp/org-screenshot" "\
Take a screenshot and insert link to it at point, if image
display is already on (see \\[org-toggle-inline-images])
screenshot will be displayed as an image

Screen area for the screenshot is selected with the mouse, left
click on a window screenshots that window, while left click and
drag selects a region. Pressing any key cancels the screen shot

With `C-u' universal argument waits one second after target is
selected before taking the screenshot. With double `C-u' wait two
seconds.

With triple `C-u' wait 3 seconds, and also rings the bell when
screenshot is done, any more `C-u' after that increases delay by
2 seconds

\(fn &optional DELAY)" t nil)

(autoload 'org-screenshot-rotate-prev "org-mode/contrib/lisp/org-screenshot" "\
Rotate last screenshot with one of the previously taken
screenshots from the same directory. If DIR is negative, rotate
in the other direction

\(fn DIR)" t nil)

(autoload 'org-screenshot-rotate-next "org-mode/contrib/lisp/org-screenshot" "\
Rotate last screenshot with one of the previously taken
screenshots from the same directory. If DIR is negative, rotate
in the other direction

\(fn DIR)" t nil)

(autoload 'org-screenshot-show-unused "org-mode/contrib/lisp/org-screenshot" "\
Open A Dired buffer with unused screenshots marked

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-toc" "org-mode/contrib/lisp/org-toc.el"
;;;;;;  (22366 14813 249885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/org-toc.el

(autoload 'org-toc-show "org-mode/contrib/lisp/org-toc" "\
Show the table of contents of the current Org-mode buffer.

\(fn &optional DEPTH POSITION)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-track" "org-mode/contrib/lisp/org-track.el"
;;;;;;  (22366 14813 249885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/org-track.el

(autoload 'org-track-fetch-package "org-mode/contrib/lisp/org-track" "\
Fetch Org package depending on `org-track-fetch-package-extension'.
If DIRECTORY is defined, unpack the package there, i.e. add the
subdirectory org-mode/ to DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'org-track-compile-org "org-mode/contrib/lisp/org-track" "\
Compile all *.el files that come with org-mode.
Generate the autoloads file `org-loaddefs.el'.

DIRECTORY is where the directory org-mode/ lives (i.e. the
          parent directory of your local repo.

\(fn &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/ox-freemind" "org-mode/contrib/lisp/ox-freemind.el"
;;;;;;  (22366 14813 249885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/ox-freemind.el

(autoload 'org-freemind-export-to-freemind "org-mode/contrib/lisp/ox-freemind" "\
Export current buffer to a Freemind Mindmap file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/ox-koma-letter" "org-mode/contrib/lisp/ox-koma-letter.el"
;;;;;;  (22366 14813 249885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/ox-koma-letter.el

(autoload 'org-koma-letter-export-as-latex "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a proeprty list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org KOMA-LETTER Export*\".  It
will be displayed if `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-koma-letter-export-to-latex "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter (tex).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-koma-letter-export-to-pdf "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter (pdf).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/ox-rss" "org-mode/contrib/lisp/ox-rss.el"
;;;;;;  (22366 14813 249885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/ox-rss.el

(autoload 'org-rss-export-as-rss "org-mode/contrib/lisp/ox-rss" "\
Export current buffer to a RSS buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org RSS Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-rss-export-to-rss "org-mode/contrib/lisp/ox-rss" "\
Export current buffer to a RSS file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-rss-publish-to-rss "org-mode/contrib/lisp/ox-rss" "\
Publish an org file to RSS.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/ox-taskjuggler" "org-mode/contrib/lisp/ox-taskjuggler.el"
;;;;;;  (22366 14813 253885 364000))
;;; Generated autoloads from org-mode/contrib/lisp/ox-taskjuggler.el

(autoload 'org-taskjuggler-export "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-taskjuggler-export-and-process "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file and process it.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return a list of reports.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-taskjuggler-export-process-and-open "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file, process and open it.

Export and process the file using
`org-taskjuggler-export-and-process' and open the generated
reports with a browser.

If you are targeting TaskJuggler 2.4 (see
`org-taskjuggler-target-version') the processing and display of
the reports is done using the TaskJuggler GUI.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org" "org-mode/lisp/org.el"
;;;;;;  (22366 14813 341885 368000))
;;; Generated autoloads from org-mode/lisp/org.el

(autoload 'org-babel-do-load-languages "org-mode/lisp/org" "\
Load the languages defined in `org-babel-load-languages'.

\(fn SYM VALUE)" nil nil)

(autoload 'org-babel-load-file "org-mode/lisp/org" "\
Load Emacs Lisp source code blocks in the Org-mode FILE.
This function exports the source code using `org-babel-tangle'
and then loads the resulting file using `load-file'.  With prefix
arg (noninteractively: 2nd arg) COMPILE the tangled Emacs Lisp
file to byte-code before it is loaded.

\(fn FILE &optional COMPILE)" t nil)

(autoload 'org-version "org-mode/lisp/org" "\
Show the org-mode version.
Interactively, or when MESSAGE is non-nil, show it in echo area.
With prefix argument, or when HERE is non-nil, insert it at point.
In non-interactive uses, a reduced version string is output unless
FULL is given.

\(fn &optional HERE FULL MESSAGE)" t nil)

(autoload 'turn-on-orgtbl "org-mode/lisp/org" "\
Unconditionally turn on `orgtbl-mode'.

\(fn)" nil nil)

(autoload 'org-clock-persistence-insinuate "org-mode/lisp/org" "\
Set up hooks for clock persistence.

\(fn)" nil nil)

(autoload 'org-mode "org-mode/lisp/org" "\
Outline-based notes management and organizer, alias
\"Carsten's outline-mode for keeping track of everything.\"

Org-mode develops organizational tasks around a NOTES file which
contains information about projects as plain text.  Org-mode is
implemented on top of outline-mode, which is ideal to keep the content
of large files well structured.  It supports ToDo items, deadlines and
time stamps, which magically appear in the diary listing of the Emacs
calendar.  Tables are easily created with a built-in table editor.
Plain text URL-like links connect to websites, emails (VM), Usenet
messages (Gnus), BBDB entries, and any files related to the project.
For printing and sharing of notes, an Org-mode file (or a part of it)
can be exported as a structured ASCII or HTML file.

The following commands are available:

\\{org-mode-map}

\(fn)" t nil)

(autoload 'org-cycle "org-mode/lisp/org" "\
TAB-action and visibility cycling for Org-mode.

This is the command invoked in Org-mode by the TAB key.  Its main purpose
is outline visibility cycling, but it also invokes other actions
in special contexts.

- When this function is called with a prefix argument, rotate the entire
  buffer through 3 states (global cycling)
  1. OVERVIEW: Show only top-level headlines.
  2. CONTENTS: Show all headlines of all levels, but no body text.
  3. SHOW ALL: Show everything.
  With a double \\[universal-argument] prefix argument, switch to the startup visibility,
  determined by the variable `org-startup-folded', and by any VISIBILITY
  properties in the buffer.
  With a triple \\[universal-argument] prefix argument, show the entire buffer, including any drawers.

- When inside a table, re-align the table and move to the next field.

- When point is at the beginning of a headline, rotate the subtree started
  by this line through 3 different states (local cycling)
  1. FOLDED:   Only the main headline is shown.
  2. CHILDREN: The main headline and the direct children are shown.
               From this state, you can move to one of the children
               and zoom in further.
  3. SUBTREE:  Show the entire subtree, including body text.
  If there is no subtree, switch directly from CHILDREN to FOLDED.

- When point is at the beginning of an empty headline and the variable
  `org-cycle-level-after-item/entry-creation' is set, cycle the level
  of the headline by demoting and promoting it to likely levels.  This
  speeds up creation document structure by pressing TAB once or several
  times right after creating a new headline.

- When there is a numeric prefix, go up to a heading with level ARG, do
  a `show-subtree' and return to the previous cursor position.  If ARG
  is negative, go up that many levels.

- When point is not at the beginning of a headline, execute the global
  binding for TAB, which is re-indenting the line.  See the option
  `org-cycle-emulate-tab' for details.

- Special case: if point is at the beginning of the buffer and there is
  no headline in line 1, this function will act as if called with prefix arg
  (\\[universal-argument] TAB, same as S-TAB) also when called without prefix arg.
  But only if also the variable `org-cycle-global-at-bob' is t.

\(fn &optional ARG)" t nil)

(autoload 'org-global-cycle "org-mode/lisp/org" "\
Cycle the global visibility.  For details see `org-cycle'.
With \\[universal-argument] prefix arg, switch to startup visibility.
With a numeric prefix, show all headlines up to that level.

\(fn &optional ARG)" t nil)
(put 'orgstruct-heading-prefix-regexp 'safe-local-variable 'stringp)

(autoload 'orgstruct-mode "org-mode/lisp/org" "\
Toggle the minor mode `orgstruct-mode'.
This mode is for using Org-mode structure commands in other
modes.  The following keys behave as if Org-mode were active, if
the cursor is on a headline, or on a plain list item (both as
defined by Org-mode).

\(fn &optional ARG)" t nil)

(autoload 'turn-on-orgstruct "org-mode/lisp/org" "\
Unconditionally turn on `orgstruct-mode'.

\(fn)" nil nil)

(autoload 'turn-on-orgstruct++ "org-mode/lisp/org" "\
Unconditionally turn on `orgstruct++-mode'.

\(fn)" nil nil)

(autoload 'org-run-like-in-org-mode "org-mode/lisp/org" "\
Run a command, pretending that the current buffer is in Org-mode.
This will temporarily bind local variables that are typically bound in
Org-mode to the values they have in Org-mode, and then interactively
call CMD.

\(fn CMD)" nil nil)

(autoload 'org-store-link "org-mode/lisp/org" "\
\\<org-mode-map>Store an org-link to the current location.
This link is added to `org-stored-links' and can later be inserted
into an Org buffer with \\[org-insert-link].

For some link types, a prefix ARG is interpreted.
For links to Usenet articles, ARG negates `org-gnus-prefer-web-links'.
For file links, ARG negates `org-context-in-file-links'.

A double prefix ARG force skipping storing functions that are not
part of Org's core.

A triple prefix ARG force storing a link for each line in the
active region.

\(fn ARG)" t nil)

(autoload 'org-insert-link-global "org-mode/lisp/org" "\
Insert a link like Org-mode does.
This command can be called in any mode to insert a link in Org-mode syntax.

\(fn)" t nil)

(autoload 'org-open-at-point-global "org-mode/lisp/org" "\
Follow a link or time-stamp like Org mode does.
This command can be called in any mode to follow an external link
or a time-stamp that has Org mode syntax.  Its behavior is
undefined when called on internal links (e.g., fuzzy links).
Raise an error when there is nothing to follow.  

\(fn)" t nil)

(autoload 'org-open-link-from-string "org-mode/lisp/org" "\
Open a link in the string S, as if it was in Org-mode.

\(fn S &optional ARG REFERENCE-BUFFER)" t nil)

(autoload 'org-switchb "org-mode/lisp/org" "\
Switch between Org buffers.

With \\[universal-argument] prefix, restrict available buffers to files.

With \\[universal-argument] \\[universal-argument] prefix, restrict available buffers to agenda files.

\(fn &optional ARG)" t nil)

(autoload 'org-cycle-agenda-files "org-mode/lisp/org" "\
Cycle through the files in `org-agenda-files'.
If the current buffer visits an agenda file, find the next one in the list.
If the current buffer does not, find the first agenda file.

\(fn)" t nil)

(autoload 'org-submit-bug-report "org-mode/lisp/org" "\
Submit a bug report on Org-mode via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your Org-mode version and configuration.

\(fn)" t nil)

(autoload 'org-reload "org-mode/lisp/org" "\
Reload all org lisp files.
With prefix arg UNCOMPILED, load the uncompiled versions.

\(fn &optional UNCOMPILED)" t nil)

(autoload 'org-customize "org-mode/lisp/org" "\
Call the customize function with org as argument.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-agenda" "org-mode/lisp/org-agenda.el"
;;;;;;  (22366 14813 313885 367000))
;;; Generated autoloads from org-mode/lisp/org-agenda.el

(autoload 'org-toggle-sticky-agenda "org-mode/lisp/org-agenda" "\
Toggle `org-agenda-sticky'.

\(fn &optional ARG)" t nil)

(autoload 'org-agenda "org-mode/lisp/org-agenda" "\
Dispatch agenda commands to collect entries to the agenda buffer.
Prompts for a command to execute.  Any prefix arg will be passed
on to the selected command.  The default selections are:

a     Call `org-agenda-list' to display the agenda for current day or week.
t     Call `org-todo-list' to display the global todo list.
T     Call `org-todo-list' to display the global todo list, select only
      entries with a specific TODO keyword (the user gets a prompt).
m     Call `org-tags-view' to display headlines with tags matching
      a condition  (the user is prompted for the condition).
M     Like `m', but select only TODO entries, no ordinary headlines.
L     Create a timeline for the current buffer.
e     Export views to associated files.
s     Search entries for keywords.
S     Search entries for keywords, only with TODO keywords.
/     Multi occur across all agenda files and also files listed
      in `org-agenda-text-search-extra-files'.
<     Restrict agenda commands to buffer, subtree, or region.
      Press several times to get the desired effect.
>     Remove a previous restriction.
#     List \"stuck\" projects.
!     Configure what \"stuck\" means.
C     Configure custom agenda commands.

More commands can be added by configuring the variable
`org-agenda-custom-commands'.  In particular, specific tags and TODO keyword
searches can be pre-defined in this way.

If the current buffer is in Org-mode and visiting a file, you can also
first press `<' once to indicate that the agenda should be temporarily
\(until the next use of \\[org-agenda]) restricted to the current file.
Pressing `<' twice means to restrict to the current subtree or region
\(if active).

\(fn &optional ARG ORG-KEYS RESTRICTION)" t nil)

(autoload 'org-batch-agenda "org-mode/lisp/org-agenda" "\
Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

\(fn CMD-KEY &rest PARAMETERS)" nil t)

(autoload 'org-batch-agenda-csv "org-mode/lisp/org-agenda" "\
Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

The output gives a line for each selected agenda item.  Each
item is a list of comma-separated values, like this:

category,head,type,todo,tags,date,time,extra,priority-l,priority-n

category     The category of the item
head         The headline, without TODO kwd, TAGS and PRIORITY
type         The type of the agenda entry, can be
                todo               selected in TODO match
                tagsmatch          selected in tags match
                diary              imported from diary
                deadline           a deadline on given date
                scheduled          scheduled on given date
                timestamp          entry has timestamp on given date
                closed             entry was closed on given date
                upcoming-deadline  warning about deadline
                past-scheduled     forwarded scheduled item
                block              entry has date block including g. date
todo         The todo keyword, if any
tags         All tags including inherited ones, separated by colons
date         The relevant date, like 2007-2-14
time         The time, like 15:00-16:50
extra        Sting with extra planning info
priority-l   The priority letter if any was given
priority-n   The computed numerical priority
agenda-day   The day in the agenda where this is listed

\(fn CMD-KEY &rest PARAMETERS)" nil t)

(autoload 'org-store-agenda-views "org-mode/lisp/org-agenda" "\
Store agenda views.

\(fn &rest PARAMETERS)" t nil)

(autoload 'org-batch-store-agenda-views "org-mode/lisp/org-agenda" "\
Run all custom agenda commands that have a file argument.

\(fn &rest PARAMETERS)" nil t)

(autoload 'org-agenda-list "org-mode/lisp/org-agenda" "\
Produce a daily/weekly view from all files in variable `org-agenda-files'.
The view will be for the current day or week, but from the overview buffer
you will be able to go to other days/weeks.

With a numeric prefix argument in an interactive call, the agenda will
span ARG days.  Lisp programs should instead specify SPAN to change
the number of days.  SPAN defaults to `org-agenda-span'.

START-DAY defaults to TODAY, or to the most recent match for the weekday
given in `org-agenda-start-on-weekday'.

When WITH-HOUR is non-nil, only include scheduled and deadline
items if they have an hour specification like [h]h:mm.

\(fn &optional ARG START-DAY SPAN WITH-HOUR)" t nil)

(autoload 'org-search-view "org-mode/lisp/org-agenda" "\
Show all entries that contain a phrase or words or regular expressions.

With optional prefix argument TODO-ONLY, only consider entries that are
TODO entries.  The argument STRING can be used to pass a default search
string into this function.  If EDIT-AT is non-nil, it means that the
user should get a chance to edit this string, with cursor at position
EDIT-AT.

The search string can be viewed either as a phrase that should be found as
is, or it can be broken into a number of snippets, each of which must match
in a Boolean way to select an entry.  The default depends on the variable
`org-agenda-search-view-always-boolean'.
Even if this is turned off (the default) you can always switch to
Boolean search dynamically by preceding the first word with  \"+\" or \"-\".

The default is a direct search of the whole phrase, where each space in
the search string can expand to an arbitrary amount of whitespace,
including newlines.

If using a Boolean search, the search string is split on whitespace and
each snippet is searched separately, with logical AND to select an entry.
Words prefixed with a minus must *not* occur in the entry.  Words without
a prefix or prefixed with a plus must occur in the entry.  Matching is
case-insensitive.  Words are enclosed by word delimiters (i.e. they must
match whole words, not parts of a word) if
`org-agenda-search-view-force-full-words' is set (default is nil).

Boolean search snippets enclosed by curly braces are interpreted as
regular expressions that must or (when preceded with \"-\") must not
match in the entry.  Snippets enclosed into double quotes will be taken
as a whole, to include whitespace.

- If the search string starts with an asterisk, search only in headlines.
- If (possibly after the leading star) the search string starts with an
  exclamation mark, this also means to look at TODO entries only, an effect
  that can also be achieved with a prefix argument.
- If (possibly after star and exclamation mark) the search string starts
  with a colon, this will mean that the (non-regexp) snippets of the
  Boolean search must match as full words.

This command searches the agenda files, and in addition the files listed
in `org-agenda-text-search-extra-files'.

\(fn &optional TODO-ONLY STRING EDIT-AT)" t nil)

(autoload 'org-todo-list "org-mode/lisp/org-agenda" "\
Show all (not done) TODO entries from all agenda file in a single list.
The prefix arg can be used to select a specific TODO keyword and limit
the list to these.  When using \\[universal-argument], you will be prompted
for a keyword.  A numeric prefix directly selects the Nth keyword in
`org-todo-keywords-1'.

\(fn &optional ARG)" t nil)

(autoload 'org-tags-view "org-mode/lisp/org-agenda" "\
Show all headlines for all `org-agenda-files' matching a TAGS criterion.
The prefix arg TODO-ONLY limits the search to TODO entries.

\(fn &optional TODO-ONLY MATCH)" t nil)

(autoload 'org-agenda-list-stuck-projects "org-mode/lisp/org-agenda" "\
Create agenda view for projects that are stuck.
Stuck projects are project that have no next actions.  For the definitions
of what a project is and how to check if it stuck, customize the variable
`org-stuck-projects'.

\(fn &rest IGNORE)" t nil)

(autoload 'org-diary "org-mode/lisp/org-agenda" "\
Return diary information from org files.
This function can be used in a \"sexp\" diary entry in the Emacs calendar.
It accesses org files and extracts information from those files to be
listed in the diary.  The function accepts arguments specifying what
items should be listed.  For a list of arguments allowed here, see the
variable `org-agenda-entry-types'.

The call in the diary file should look like this:

   &%%(org-diary) ~/path/to/some/orgfile.org

Use a separate line for each org file to check.  Or, if you omit the file name,
all files listed in `org-agenda-files' will be checked automatically:

   &%%(org-diary)

If you don't give any arguments (as in the example above), the default value
of `org-agenda-entry-types' is used: (:deadline :scheduled :timestamp :sexp).
So the example above may also be written as

   &%%(org-diary :deadline :timestamp :sexp :scheduled)

The function expects the lisp variables `entry' and `date' to be provided
by the caller, because this is how the calendar works.  Don't use this
function from a program - use `org-agenda-get-day-entries' instead.

\(fn &rest ARGS)" nil nil)

(autoload 'org-agenda-check-for-timestamp-as-reason-to-ignore-todo-item "org-mode/lisp/org-agenda" "\
Do we have a reason to ignore this TODO entry because it has a time stamp?

\(fn &optional END)" nil nil)

(autoload 'org-agenda-set-restriction-lock "org-mode/lisp/org-agenda" "\
Set restriction lock for agenda, to current subtree or file.
Restriction will be the file if TYPE is `file', or if type is the
universal prefix \\='(4), or if the cursor is before the first headline
in the file.  Otherwise, restriction will be to the current subtree.

\(fn &optional TYPE)" t nil)

(autoload 'org-calendar-goto-agenda "org-mode/lisp/org-agenda" "\
Compute the Org-mode agenda for the calendar date displayed at the cursor.
This is a command that has to be installed in `calendar-mode-map'.

\(fn)" t nil)

(autoload 'org-agenda-to-appt "org-mode/lisp/org-agenda" "\
Activate appointments found in `org-agenda-files'.
With a \\[universal-argument] prefix, refresh the list of
appointments.

If FILTER is t, interactively prompt the user for a regular
expression, and filter out entries that don't match it.

If FILTER is a string, use this string as a regular expression
for filtering entries out.

If FILTER is a function, filter out entries against which
calling the function returns nil.  This function takes one
argument: an entry from `org-agenda-get-day-entries'.

FILTER can also be an alist with the car of each cell being
either `headline' or `category'.  For example:

  \\='((headline \"IMPORTANT\")
    (category \"Work\"))

will only add headlines containing IMPORTANT or headlines
belonging to the \"Work\" category.

ARGS are symbols indicating what kind of entries to consider.
By default `org-agenda-to-appt' will use :deadline*, :scheduled*
\(i.e., deadlines and scheduled items with a hh:mm specification)
and :timestamp entries.  See the docstring of `org-diary' for
details and examples.

If an entry has a APPT_WARNTIME property, its value will be used
to override `appt-message-warning-time'.

\(fn &optional REFRESH FILTER &rest ARGS)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-capture" "org-mode/lisp/org-capture.el"
;;;;;;  (22366 14813 313885 367000))
;;; Generated autoloads from org-mode/lisp/org-capture.el

(autoload 'org-capture-string "org-mode/lisp/org-capture" "\
Capture STRING with the template selected by KEYS.

\(fn STRING &optional KEYS)" t nil)

(autoload 'org-capture "org-mode/lisp/org-capture" "\
Capture something.
\\<org-capture-mode-map>
This will let you select a template from `org-capture-templates', and then
file the newly captured information.  The text is immediately inserted
at the target location, and an indirect buffer is shown where you can
edit it.  Pressing \\[org-capture-finalize] brings you back to the previous state
of Emacs, so that you can continue your work.

When called interactively with a \\[universal-argument] prefix argument GOTO, don't capture
anything, just go to the file/headline where the selected template
stores its notes.  With a double prefix argument \\[universal-argument] \\[universal-argument], go to the last note
stored.

When called with a `C-0' (zero) prefix, insert a template at point.

ELisp programs can set KEYS to a string associated with a template
in `org-capture-templates'.  In this case, interactive selection
will be bypassed.

If `org-capture-use-agenda-date' is non-nil, capturing from the
agenda will use the date at point as the default date.  Then, a
`C-1' prefix will tell the capture process to use the HH:MM time
of the day at point (if any) or the current HH:MM time.

\(fn &optional GOTO KEYS)" t nil)

(autoload 'org-capture-import-remember-templates "org-mode/lisp/org-capture" "\
Set `org-capture-templates' to be similar to `org-remember-templates'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-colview" "org-mode/lisp/org-colview.el"
;;;;;;  (22366 14813 313885 367000))
;;; Generated autoloads from org-mode/lisp/org-colview.el

(autoload 'org-columns-remove-overlays "org-mode/lisp/org-colview" "\
Remove all currently active column overlays.

\(fn)" t nil)

(autoload 'org-columns-get-format-and-top-level "org-mode/lisp/org-colview" "\


\(fn)" nil nil)

(autoload 'org-columns "org-mode/lisp/org-colview" "\
Turn on column view on an Org mode file.

Column view applies to the whole buffer if point is before the
first headline.  Otherwise, it applies to the first ancestor
setting \"COLUMNS\" property.  If there is none, it defaults to
the current headline.  With a \\[universal-argument] prefix argument, turn on column
view for the whole buffer unconditionally.

When COLUMNS-FMT-STRING is non-nil, use it as the column format.

\(fn &optional GLOBAL COLUMNS-FMT-STRING)" t nil)

(autoload 'org-columns-compute "org-mode/lisp/org-colview" "\
Summarize the values of PROPERTY hierarchically.
Also update existing values for PROPERTY according to the first
column specification.

\(fn PROPERTY)" t nil)

(autoload 'org-dblock-write:columnview "org-mode/lisp/org-colview" "\
Write the column view table.
PARAMS is a property list of parameters:

:id       the :ID: property of the entry where the columns view
	  should be built.  When the symbol `local', call locally.
	  When `global' call column view with the cursor at the beginning
	  of the buffer (usually this means that the whole buffer switches
	  to column view).  When \"file:path/to/file.org\", invoke column
	  view at the start of that file.  Otherwise, the ID is located
	  using `org-id-find'.
:hlines   When t, insert a hline before each item.  When a number, insert
	  a hline before each level <= that number.
:indent   When non-nil, indent each ITEM field according to its level.
:vlines   When t, make each column a colgroup to enforce vertical lines.
:maxlevel When set to a number, don't capture headlines below this level.
:skip-empty-rows
	  When t, skip rows where all specifiers other than ITEM are empty.
:width    apply widths specified in columns format using <N> specifiers.
:format   When non-nil, specify the column view format to use.

\(fn PARAMS)" nil nil)

(autoload 'org-columns-insert-dblock "org-mode/lisp/org-colview" "\
Create a dynamic block capturing a column view table.

\(fn)" t nil)

(autoload 'org-agenda-columns "org-mode/lisp/org-colview" "\
Turn on or update column view in the agenda.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-compat" "org-mode/lisp/org-compat.el"
;;;;;;  (22366 14813 313885 367000))
;;; Generated autoloads from org-mode/lisp/org-compat.el

(autoload 'org-check-version "org-mode/lisp/org-compat" "\
Try very hard to provide sensible version strings.

\(fn)" nil t)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-lint" "org-mode/lisp/org-lint.el"
;;;;;;  (22366 14813 321885 367000))
;;; Generated autoloads from org-mode/lisp/org-lint.el

(autoload 'org-lint "org-mode/lisp/org-lint" "\
Check current Org buffer for syntax mistakes.

By default, run all checkers.  With a single prefix ARG \\[universal-argument],
select one category of checkers only.  With a double prefix
\\[universal-argument] \\[universal-argument], select one precise checker by its name.

ARG can also be a list of checker names, as symbols, to run.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-macs" "org-mode/lisp/org-macs.el"
;;;;;;  (22366 14813 325885 367000))
;;; Generated autoloads from org-mode/lisp/org-macs.el

(autoload 'org-load-noerror-mustsuffix "org-mode/lisp/org-macs" "\
Load FILE with optional arguments NOERROR and MUSTSUFFIX.

\(fn FILE)" nil t)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-version" "org-mode/lisp/org-version.el"
;;;;;;  (22366 14829 881885 990000))
;;; Generated autoloads from org-mode/lisp/org-version.el

(autoload 'org-release "org-mode/lisp/org-version" "\
The release version of org-mode.
  Inserted by installing org-mode or when a release is made.

\(fn)" nil nil)

(autoload 'org-git-version "org-mode/lisp/org-version" "\
The Git version of org-mode.
  Inserted by installing org-mode or when a release is made.

\(fn)" nil nil)

(defvar org-odt-data-dir "/usr/share/emacs/etc/org" "\
The location of ODT styles.")

;;;***

;;;### (autoloads nil "pyenv/pyenv" "pyenv/pyenv.el" (22333 38957
;;;;;;  485895 441000))
;;; Generated autoloads from pyenv/pyenv.el

(autoload 'pyenv-use-global "pyenv/pyenv" "\
activate pyenv global python

\(fn)" t nil)

(autoload 'pyenv-use-corresponding "pyenv/pyenv" "\
search for .python-version and activate the corresponding python

\(fn)" t nil)

(autoload 'pyenv-use "pyenv/pyenv" "\
choose what python you want to activate

\(fn PYTHON-VERSION)" t nil)

(defvar global-pyenv-mode nil "\
Non-nil if Global-Pyenv mode is enabled.
See the command `global-pyenv-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-pyenv-mode'.")

(custom-autoload 'global-pyenv-mode "pyenv/pyenv" nil)

(autoload 'global-pyenv-mode "pyenv/pyenv" "\
use pyenv to configure the python version used by your Emacs.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "session/lisp/session" "session/lisp/session.el"
;;;;;;  (22283 16507 663659 834000))
;;; Generated autoloads from session/lisp/session.el

(autoload 'session-jump-to-last-change "session/lisp/session" "\
Jump to the position of the last change.
Without prefix arg, jump successively to previous change positions which
differ by at least `session-jump-undo-threshold' characters by repeated
invocation of this command.  With prefix argument 0, jump to end of last
change.  With numeric prefix argument, jump to start of first change in
the ARG's undo block in the `buffer-undo-list'.

With non-numeric prefix argument (\\[universal-argument] only), set
point as oldest change position.  It might change slightly if you jump
to it due to intermediate insert/delete elements in the
`buffer-undo-list'.

\(fn &optional ARG)" t nil)

(autoload 'session-initialize "session/lisp/session" "\
Initialize package session and read previous session file.
Setup hooks and load `session-save-file', see variable `session-initialize'.  At
best, this function is called at the end of the Emacs startup, i.e., add
this function to `after-init-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "smex/smex" "smex/smex.el" (22185 33563 74106
;;;;;;  652000))
;;; Generated autoloads from smex/smex.el

(autoload 'smex "smex/smex" "\


\(fn)" t nil)

(autoload 'smex-major-mode-commands "smex/smex" "\
Like `smex', but limited to commands that are relevant to the active major mode.

\(fn)" t nil)

(autoload 'smex-initialize "smex/smex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "sr-speedbar/sr-speedbar" "sr-speedbar/sr-speedbar.el"
;;;;;;  (22185 33809 398111 991000))
;;; Generated autoloads from sr-speedbar/sr-speedbar.el

(autoload 'sr-speedbar-toggle "sr-speedbar/sr-speedbar" "\
Toggle sr-speedbar window.
Toggle visibility of sr-speedbar by resizing
the `sr-speedbar-window' to a minimal width
or the last width when visible.
Use this function to create or toggle visibility
of a speedbar-window.  It will be created if necessary.

\(fn)" t nil)

(autoload 'sr-speedbar-open "sr-speedbar/sr-speedbar" "\
Create `sr-speedbar' window.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "tabbar/revive" "tabbar/revive.el" (22185 33567
;;;;;;  362106 745000))
;;; Generated autoloads from tabbar/revive.el

(autoload 'current-window-configuration-printable "tabbar/revive" "\
Return the printable current-window-configuration.
This configuration will be stored by restore-window-configuration.
Returned configurations are list of:
'(Screen-Width Screen-Height Edge-List Buffer-List)

Edge-List is a return value of revive:all-window-edges, list of all
window-edges whose first member is always of north west window.

Buffer-List is a list of buffer property list of all windows.  This
property lists are stored in order corresponding to Edge-List.  Buffer
property list is formed as
'((buffer-file-name) (buffer-name) (point) (window-start) tabs).

\(fn)" nil nil)

(autoload 'restore-window-configuration "tabbar/revive" "\
Restore the window configuration.
Configuration CONFIG should be created by
current-window-configuration-printable.

\(fn CONFIG)" nil nil)

(autoload 'wipe "tabbar/revive" "\
Wipe Emacs.

\(fn)" t nil)

(autoload 'save-current-configuration "tabbar/revive" "\
Save current window/buffer configuration into configuration file.

\(fn &optional NUM)" t nil)

(autoload 'resume "tabbar/revive" "\
Resume window/buffer configuration.
Configuration should be saved by save-current-configuration.

\(fn &optional NUM)" t nil)

(autoload 'revive-desktop "tabbar/revive" "\
Restores the application state.
Similar to `resume', though using `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

(autoload 'revive-save-desktop "tabbar/revive" "\
Save application state with `desktop' and `revive'.
Similar to `save-current-configuration', 
though uses `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

;;;***

;;;### (autoloads nil "tabbar/tabbar" "tabbar/tabbar.el" (22185 33567
;;;;;;  362106 745000))
;;; Generated autoloads from tabbar/tabbar.el

(autoload 'tabbar-backward "tabbar/tabbar" "\
Select the previous available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-forward "tabbar/tabbar" "\
Select the next available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.

\(fn)" t nil)

(autoload 'tabbar-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.

\(fn)" t nil)

(autoload 'tabbar-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.

\(fn)" t nil)

(autoload 'tabbar-forward-tab "tabbar/tabbar" "\
Select the next visible tab.

\(fn)" t nil)

(autoload 'tabbar-press-home "tabbar/tabbar" "\
Press the tab bar home button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-left "tabbar/tabbar" "\
Press the tab bar scroll-left button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-right "tabbar/tabbar" "\
Press the tab bar scroll-right button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-mwheel-backward "tabbar/tabbar" "\
Select the previous available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward "tabbar/tabbar" "\
Select the next available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.
If there is only one group, select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.
If there is only one group, select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-tab "tabbar/tabbar" "\
Select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-tab "tabbar/tabbar" "\
Select the next or previous tab according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-group "tabbar/tabbar" "\
Select the next or previous group of tabs according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-local-mode "tabbar/tabbar" "\
Toggle local display of the tab bar.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.
When turned on, if a local header line is shown, it is hidden to show
the tab bar.  The tab bar is locally hidden otherwise.  When turned
off, if a local header line is hidden or the tab bar is locally
hidden, it is shown again.  Signal an error if Tabbar mode is off.

\(fn &optional ARG)" t nil)

(defvar tabbar-mode nil "\
Non-nil if Tabbar mode is enabled.
See the command `tabbar-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mode'.")

(custom-autoload 'tabbar-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mode "tabbar/tabbar" "\
Toggle display of a tab bar in the header line.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mode-map}

\(fn &optional ARG)" t nil)

(defvar tabbar-mwheel-mode nil "\
Non-nil if Tabbar-Mwheel mode is enabled.
See the command `tabbar-mwheel-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mwheel-mode'.")

(custom-autoload 'tabbar-mwheel-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mwheel-mode "tabbar/tabbar" "\
Toggle use of the mouse wheel to navigate through tabs or groups.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mwheel-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "virtualenvwrapper/virtualenvwrapper" "virtualenvwrapper/virtualenvwrapper.el"
;;;;;;  (22316 3312 785934 654000))
;;; Generated autoloads from virtualenvwrapper/virtualenvwrapper.el

(autoload 'venv-deactivate "virtualenvwrapper/virtualenvwrapper" "\
Deactivate the current venv.

\(fn)" t nil)

(autoload 'venv-set-location "virtualenvwrapper/virtualenvwrapper" "\
Set where to look for virtual environments to LOCATION.
This is useful e.g. when using tox.

\(fn &optional LOCATION)" t nil)

(autoload 'venv-workon "virtualenvwrapper/virtualenvwrapper" "\
Interactively switch to virtualenv NAME. Prompts for name if called
interactively.

\(fn &optional NAME)" t nil)

(autoload 'venv-mkvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
Create new virtualenvs NAMES. If venv-location is a single
directory, the new virtualenvs are made there; if it is a list of
directories, the new virtualenvs are made in the current
default-directory.

\(fn &rest NAMES)" t nil)

(autoload 'venv-rmvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
Delete virtualenvs NAMES.

\(fn &rest NAMES)" t nil)

(autoload 'venv-lsvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
List all available virtualenvs in a temp buffer.

\(fn)" t nil)

(autoload 'venv-cdvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
Change to the directory of current virtualenv. If
SUBDIR is passed, append that to the path such that
we are immediately in that directory.

\(fn &optional SUBDIR)" t nil)

(autoload 'venv-cpvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
Copy virtualenv NAME to NEWNAME. Any arguments not passed will be
prompted for This comes with the same caveat as cpvirtualenv in the
original virtualenvwrapper, which is that is far from guarenteed to
work well. Many packages hardcode absolute paths in various places an
will break if moved to a new location. Use with caution. If used with
a single virtualenv directory, behaves just like cpvirtualenv in
virtualenvwrapper.sh.  If used with virtualenvs spread around the
filesystem, creates the new virtualenv in the current default
directory.

\(fn &optional NAME NEWNAME)" t nil)

(autoload 'venv-shell-init "virtualenvwrapper/virtualenvwrapper" "\
Activate the current virtualenv in a newly opened shell.

\(fn PROCESS)" nil nil)

(autoload 'venv-initialize-interactive-shells "virtualenvwrapper/virtualenvwrapper" "\
Configure interactive shells for use with
virtualenvwrapper.el.

\(fn)" nil nil)

(autoload 'venv-initialize-eshell "virtualenvwrapper/virtualenvwrapper" "\
Configure eshell for use with virtualenvwrapper.el.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "web-mode/web-mode" "web-mode/web-mode.el"
;;;;;;  (22358 21650 734959 973000))
;;; Generated autoloads from web-mode/web-mode.el

(autoload 'web-mode "web-mode/web-mode" "\
Major mode for editing web templates.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "window-numbering/window-numbering" "window-numbering/window-numbering.el"
;;;;;;  (22185 33898 650113 925000))
;;; Generated autoloads from window-numbering/window-numbering.el

(defvar window-numbering-mode nil "\
Non-nil if Window-Numbering mode is enabled.
See the command `window-numbering-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `window-numbering-mode'.")

(custom-autoload 'window-numbering-mode "window-numbering/window-numbering" nil)

(autoload 'window-numbering-mode "window-numbering/window-numbering" "\
A minor mode that assigns a number to each window.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "window-purpose/window-purpose" "window-purpose/window-purpose.el"
;;;;;;  (22283 22049 775779 955000))
;;; Generated autoloads from window-purpose/window-purpose.el

(defvar purpose-mode nil "\
Non-nil if Purpose mode is enabled.
See the command `purpose-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `purpose-mode'.")

(custom-autoload 'purpose-mode "window-purpose/window-purpose" nil)

(autoload 'purpose-mode "window-purpose/window-purpose" "\
Toggle Purpose mode on or off according to the regular rules.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "window-purpose/window-purpose-configuration"
;;;;;;  "window-purpose/window-purpose-configuration.el" (22283 22049
;;;;;;  771779 955000))
;;; Generated autoloads from window-purpose/window-purpose-configuration.el

(autoload 'purpose-set-extension-configuration "window-purpose/window-purpose-configuration" "\
Set an extension's entry in `purpose-extended-configuration'.
EXT-KEYWORD should be a keyword used to identify the extension.
CONFIG is a `purpose-conf' object containing the extension's purpose
configuration.
Example:
 (purpose-set-extension-configuration
     :python
     (purpose-conf \"py\"
                   :mode-purposes
                   '((python-mode . python)
                     (inferior-python-mode . interpreter))))

This function calls `purpose-compile-extended-configuration' when its
done.

\(fn EXT-KEYWORD CONFIG)" nil nil)

;;;***

;;;### (autoloads nil "window-purpose/window-purpose-x" "window-purpose/window-purpose-x.el"
;;;;;;  (22283 22049 775779 955000))
;;; Generated autoloads from window-purpose/window-purpose-x.el

(autoload 'purpose-x-code1-setup "window-purpose/window-purpose-x" "\
Setup purpose-x-code1.
This setup includes 4 windows:
1. dedicated 'edit window
2. dedicated 'dired window.  This window shows the current buffer's
directory in a special window, using `dired' and
`dired-hide-details-mode' (if available).
3. dedicated 'buffers window.  This window shows the currently open
files, using `ibuffer'.
4. dedicated 'ilist window.  This window shows the current buffer's
imenu.

\(fn)" t nil)

(autoload 'purpose-x-magit-single-on "window-purpose/window-purpose-x" "\
Turn on magit-single purpose configuration.

\(fn)" t nil)

(autoload 'purpose-x-magit-multi-on "window-purpose/window-purpose-x" "\
Turn on magit-multi purpose configuration.

\(fn)" t nil)

(autoload 'purpose-x-golden-ratio-setup "window-purpose/window-purpose-x" "\
Make `golden-ratio-mode' aware of `purpose-mode'.

\(fn)" t nil)

(autoload 'purpose-x-popwin-setup "window-purpose/window-purpose-x" "\
Activate `popwin' emulation.
This extension treats certain buffers as \"popup\" buffers and displays
them in a special popup window.
The window is closed automatically when selecting another buffer (via
`switch-to-buffer' and the like), or by pressing \\[keyboard-quit].
You can control which buffers are treated as popup buffers by changing
the variables `purpose-x-popwin-major-modes',
`purpose-x-popwin-buffer-names' and
`purpose-x-popwin-buffer-name-regexps'.
Look at `purpose-x-popwin-*' variables and functions to learn more.

\(fn)" t nil)

(autoload 'purpose-x-persp-setup "window-purpose/window-purpose-x" "\
Activate purpose-x-persp extension.
This extension automatically activates a purpose configuration for the
current perspective.  The configuration changes automatically when
switching perspectives or when toggling `persp-mode'.
The variable `purpose-x-persp-confs' matches between perspectives and
purpose configurations.

\(fn)" t nil)

(autoload 'purpose-x-persp-switch-buffer "window-purpose/window-purpose-x" "\
Switch to BUFFER, limited by purpose and perspective.
BUFFER is chosen from buffers with the same purpose as the current
buffer that are also part of the current perspective.
NORECORD and FORCE-SAME-WINDOW have the same meaning as in
`switch-to-buffer'.

\(fn BUFFER &optional NORECORD FORCE-SAME-WINDOW)" t nil)

(autoload 'purpose-x-persp-switch-buffer-other-window "window-purpose/window-purpose-x" "\
Switch to BUFFER in other window, limited by purpose and perspective.
NORECORD has the same meaning as in `switch-to-buffer-other-window'.
The relation between `purpose-x-persp-switch-buffer-other-window' and
`switch-to-buffer-other-window' is the same as the relation between
`purpose-x-persp-switch-buffer' and `switch-to-buffer'.

\(fn BUFFER &optional NORECORD)" t nil)

(autoload 'purpose-x-persp-switch-buffer-other-frame "window-purpose/window-purpose-x" "\
Switch to BUFFER in other frame, limited by purpose and perspective.
NORECORD has the same meaning as in `switch-to-buffer-other-frame'.
The relation between `purpose-x-persp-switch-buffer-other-frame' and
`switch-to-buffer-other-frame' is the same as the relation between
`purpose-x-persp-switch-buffer' and `switch-to-buffer'.

\(fn BUFFER &optional NORECORD)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-pkg.el" "cedet/cedet-build.el"
;;;;;;  "cedet/cedet-devel-load.el" "cedet/cedet-ediff.el" "cedet/cedet-emacs-merge.el"
;;;;;;  "cedet/cedet-remove-builtin.el" "cedet/cedet-update-changelog.el"
;;;;;;  "cedet/cedet-update-version.el" "color-theme-solarized/color-theme-solarized-pkg.el"
;;;;;;  "color-theme-solarized/solarized-theme.el" "color-theme/color-theme-autoloads.el"
;;;;;;  "ctable/ctable.el" "ctable/test-ctable.el" "dash/dash-functional.el"
;;;;;;  "dash/dash.el" "deferred/concurrent.el" "deferred/deferred.el"
;;;;;;  "ein/lisp/debug-ein.el" "ein/lisp/ein-ac.el" "ein/lisp/ein-cell-output.el"
;;;;;;  "ein/lisp/ein-cell.el" "ein/lisp/ein-completer.el" "ein/lisp/ein-contents-api.el"
;;;;;;  "ein/lisp/ein-core.el" "ein/lisp/ein-events.el" "ein/lisp/ein-ipdb.el"
;;;;;;  "ein/lisp/ein-kernelinfo.el" "ein/lisp/ein-kill-ring.el"
;;;;;;  "ein/lisp/ein-loaddefs.el" "ein/lisp/ein-log.el" "ein/lisp/ein-multilang-fontify.el"
;;;;;;  "ein/lisp/ein-node.el" "ein/lisp/ein-notification.el" "ein/lisp/ein-output-area.el"
;;;;;;  "ein/lisp/ein-pager.el" "ein/lisp/ein-pkg.el" "ein/lisp/ein-python.el"
;;;;;;  "ein/lisp/ein-pytools.el" "ein/lisp/ein-query.el" "ein/lisp/ein-scratchsheet.el"
;;;;;;  "ein/lisp/ein-smartrep.el" "ein/lisp/ein-subpackages.el"
;;;;;;  "ein/lisp/ein-utils.el" "ein/lisp/ein-websocket.el" "ein/lisp/ein-worksheet.el"
;;;;;;  "ein/lisp/ein.el" "ein/lisp/zeroein.el" "epc/epc.el" "epc/epcs.el"
;;;;;;  "epc/test-epc.el" "ess/ess-autoloads.el" "fuzzy/fuzzy.el"
;;;;;;  "jedi/test-jedi.el" "jedi/tryout-jedi.el" "js2-mode/js2-old-indent.el"
;;;;;;  "let-alist/let-alist-autoloads.el" "let-alist/let-alist-pkg.el"
;;;;;;  "org-mode/contrib/lisp/ob-eukleides.el" "org-mode/contrib/lisp/ob-fomus.el"
;;;;;;  "org-mode/contrib/lisp/ob-julia.el" "org-mode/contrib/lisp/ob-mathematica.el"
;;;;;;  "org-mode/contrib/lisp/ob-mathomatic.el" "org-mode/contrib/lisp/ob-oz.el"
;;;;;;  "org-mode/contrib/lisp/ob-stata.el" "org-mode/contrib/lisp/ob-tcl.el"
;;;;;;  "org-mode/contrib/lisp/org-bibtex-extras.el" "org-mode/contrib/lisp/org-bookmark.el"
;;;;;;  "org-mode/contrib/lisp/org-checklist.el" "org-mode/contrib/lisp/org-choose.el"
;;;;;;  "org-mode/contrib/lisp/org-collector.el" "org-mode/contrib/lisp/org-contribdir.el"
;;;;;;  "org-mode/contrib/lisp/org-depend.el" "org-mode/contrib/lisp/org-download.el"
;;;;;;  "org-mode/contrib/lisp/org-drill.el" "org-mode/contrib/lisp/org-ebib.el"
;;;;;;  "org-mode/contrib/lisp/org-effectiveness.el" "org-mode/contrib/lisp/org-elisp-symbol.el"
;;;;;;  "org-mode/contrib/lisp/org-eval-light.el" "org-mode/contrib/lisp/org-eval.el"
;;;;;;  "org-mode/contrib/lisp/org-eww.el" "org-mode/contrib/lisp/org-expiry.el"
;;;;;;  "org-mode/contrib/lisp/org-git-link.el" "org-mode/contrib/lisp/org-index.el"
;;;;;;  "org-mode/contrib/lisp/org-interactive-query.el" "org-mode/contrib/lisp/org-invoice.el"
;;;;;;  "org-mode/contrib/lisp/org-learn.el" "org-mode/contrib/lisp/org-license.el"
;;;;;;  "org-mode/contrib/lisp/org-mac-iCal.el" "org-mode/contrib/lisp/org-mac-link.el"
;;;;;;  "org-mode/contrib/lisp/org-mairix.el" "org-mode/contrib/lisp/org-man.el"
;;;;;;  "org-mode/contrib/lisp/org-mew.el" "org-mode/contrib/lisp/org-mime.el"
;;;;;;  "org-mode/contrib/lisp/org-notify.el" "org-mode/contrib/lisp/org-notmuch.el"
;;;;;;  "org-mode/contrib/lisp/org-panel.el" "org-mode/contrib/lisp/org-screen.el"
;;;;;;  "org-mode/contrib/lisp/org-secretary.el" "org-mode/contrib/lisp/org-static-mathjax.el"
;;;;;;  "org-mode/contrib/lisp/org-sudoku.el" "org-mode/contrib/lisp/org-velocity.el"
;;;;;;  "org-mode/contrib/lisp/org-vm.el" "org-mode/contrib/lisp/org-wikinodes.el"
;;;;;;  "org-mode/contrib/lisp/org-wl.el" "org-mode/contrib/lisp/orgtbl-sqlinsert.el"
;;;;;;  "org-mode/contrib/lisp/ox-bibtex.el" "org-mode/contrib/lisp/ox-confluence.el"
;;;;;;  "org-mode/contrib/lisp/ox-deck.el" "org-mode/contrib/lisp/ox-extra.el"
;;;;;;  "org-mode/contrib/lisp/ox-gfm.el" "org-mode/contrib/lisp/ox-groff.el"
;;;;;;  "org-mode/contrib/lisp/ox-s5.el" "org-mode/lisp/ob-C.el"
;;;;;;  "org-mode/lisp/ob-J.el" "org-mode/lisp/ob-R.el" "org-mode/lisp/ob-abc.el"
;;;;;;  "org-mode/lisp/ob-asymptote.el" "org-mode/lisp/ob-awk.el"
;;;;;;  "org-mode/lisp/ob-calc.el" "org-mode/lisp/ob-clojure.el"
;;;;;;  "org-mode/lisp/ob-comint.el" "org-mode/lisp/ob-coq.el" "org-mode/lisp/ob-core.el"
;;;;;;  "org-mode/lisp/ob-css.el" "org-mode/lisp/ob-ditaa.el" "org-mode/lisp/ob-dot.el"
;;;;;;  "org-mode/lisp/ob-ebnf.el" "org-mode/lisp/ob-emacs-lisp.el"
;;;;;;  "org-mode/lisp/ob-eval.el" "org-mode/lisp/ob-exp.el" "org-mode/lisp/ob-forth.el"
;;;;;;  "org-mode/lisp/ob-fortran.el" "org-mode/lisp/ob-gnuplot.el"
;;;;;;  "org-mode/lisp/ob-groovy.el" "org-mode/lisp/ob-haskell.el"
;;;;;;  "org-mode/lisp/ob-io.el" "org-mode/lisp/ob-java.el" "org-mode/lisp/ob-js.el"
;;;;;;  "org-mode/lisp/ob-keys.el" "org-mode/lisp/ob-latex.el" "org-mode/lisp/ob-ledger.el"
;;;;;;  "org-mode/lisp/ob-lilypond.el" "org-mode/lisp/ob-lisp.el"
;;;;;;  "org-mode/lisp/ob-lob.el" "org-mode/lisp/ob-makefile.el"
;;;;;;  "org-mode/lisp/ob-matlab.el" "org-mode/lisp/ob-maxima.el"
;;;;;;  "org-mode/lisp/ob-mscgen.el" "org-mode/lisp/ob-ocaml.el"
;;;;;;  "org-mode/lisp/ob-octave.el" "org-mode/lisp/ob-org.el" "org-mode/lisp/ob-perl.el"
;;;;;;  "org-mode/lisp/ob-picolisp.el" "org-mode/lisp/ob-plantuml.el"
;;;;;;  "org-mode/lisp/ob-processing.el" "org-mode/lisp/ob-python.el"
;;;;;;  "org-mode/lisp/ob-ref.el" "org-mode/lisp/ob-ruby.el" "org-mode/lisp/ob-sass.el"
;;;;;;  "org-mode/lisp/ob-scala.el" "org-mode/lisp/ob-scheme.el"
;;;;;;  "org-mode/lisp/ob-screen.el" "org-mode/lisp/ob-sed.el" "org-mode/lisp/ob-shell.el"
;;;;;;  "org-mode/lisp/ob-shen.el" "org-mode/lisp/ob-sql.el" "org-mode/lisp/ob-sqlite.el"
;;;;;;  "org-mode/lisp/ob-stan.el" "org-mode/lisp/ob-table.el" "org-mode/lisp/ob-tangle.el"
;;;;;;  "org-mode/lisp/ob.el" "org-mode/lisp/org-archive.el" "org-mode/lisp/org-attach.el"
;;;;;;  "org-mode/lisp/org-bbdb.el" "org-mode/lisp/org-bibtex.el"
;;;;;;  "org-mode/lisp/org-clock.el" "org-mode/lisp/org-crypt.el"
;;;;;;  "org-mode/lisp/org-ctags.el" "org-mode/lisp/org-datetree.el"
;;;;;;  "org-mode/lisp/org-docview.el" "org-mode/lisp/org-element.el"
;;;;;;  "org-mode/lisp/org-entities.el" "org-mode/lisp/org-eshell.el"
;;;;;;  "org-mode/lisp/org-faces.el" "org-mode/lisp/org-feed.el"
;;;;;;  "org-mode/lisp/org-footnote.el" "org-mode/lisp/org-gnus.el"
;;;;;;  "org-mode/lisp/org-habit.el" "org-mode/lisp/org-id.el" "org-mode/lisp/org-indent.el"
;;;;;;  "org-mode/lisp/org-info.el" "org-mode/lisp/org-inlinetask.el"
;;;;;;  "org-mode/lisp/org-install.el" "org-mode/lisp/org-irc.el"
;;;;;;  "org-mode/lisp/org-list.el" "org-mode/lisp/org-loaddefs.el"
;;;;;;  "org-mode/lisp/org-macro.el" "org-mode/lisp/org-mhe.el" "org-mode/lisp/org-mobile.el"
;;;;;;  "org-mode/lisp/org-mouse.el" "org-mode/lisp/org-pcomplete.el"
;;;;;;  "org-mode/lisp/org-plot.el" "org-mode/lisp/org-protocol.el"
;;;;;;  "org-mode/lisp/org-rmail.el" "org-mode/lisp/org-src.el" "org-mode/lisp/org-table.el"
;;;;;;  "org-mode/lisp/org-timer.el" "org-mode/lisp/org-w3m.el" "org-mode/lisp/ox-ascii.el"
;;;;;;  "org-mode/lisp/ox-beamer.el" "org-mode/lisp/ox-html.el" "org-mode/lisp/ox-icalendar.el"
;;;;;;  "org-mode/lisp/ox-latex.el" "org-mode/lisp/ox-man.el" "org-mode/lisp/ox-md.el"
;;;;;;  "org-mode/lisp/ox-odt.el" "org-mode/lisp/ox-org.el" "org-mode/lisp/ox-publish.el"
;;;;;;  "org-mode/lisp/ox-texinfo.el" "org-mode/lisp/ox.el" "popup/popup.el"
;;;;;;  "pyenv/pyenv-pkg.el" "python-environment/python-environment.el"
;;;;;;  "python-environment/test-python-environment.el" "request/request-deferred.el"
;;;;;;  "request/request.el" "s/s.el" "speedbar-extension/speedbar-extension.el"
;;;;;;  "tabbar/aquamacs-compat.el" "tabbar/aquamacs-tabbar.el" "tabbar/aquamacs-tools.el"
;;;;;;  "tabbar/one-buffer-one-frame.el" "tabbar/tabbar-window.el"
;;;;;;  "websocket/websocket-functional-test.el" "websocket/websocket-test.el"
;;;;;;  "websocket/websocket.el" "window-numbering/tests.el" "window-purpose/window-purpose-core.el"
;;;;;;  "window-purpose/window-purpose-fixes.el" "window-purpose/window-purpose-layout.el"
;;;;;;  "window-purpose/window-purpose-prefix-overload.el" "window-purpose/window-purpose-switch.el"
;;;;;;  "window-purpose/window-purpose-utils.el") (22366 14855 582590
;;;;;;  665000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
