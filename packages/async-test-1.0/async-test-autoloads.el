;;; async-test-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "async" "async.el" (0 0 0 0))
;;; Generated autoloads from async.el

(autoload 'async-start-process "async" "\
Start the executable PROGRAM asynchronously.  See `async-start'.
PROGRAM is passed PROGRAM-ARGS, calling FINISH-FUNC with the
process object when done.  If FINISH-FUNC is nil, the future
object will return the process object when the program is
finished.  Set DEFAULT-DIRECTORY to change PROGRAM's current
working directory.

\(fn NAME PROGRAM FINISH-FUNC &rest PROGRAM-ARGS)" nil nil)

(autoload 'async-start "async" "\
Execute START-FUNC (often a lambda) in a subordinate Emacs process.
When done, the return value is passed to FINISH-FUNC.  Example:

    (async-start
       ;; What to do in the child process
       (lambda ()
         (message \"This is a test\")
         (sleep-for 3)
         222)

       ;; What to do when it finishes
       (lambda (result)
         (message \"Async process done, result should be 222: %s\"
                  result)))

If FINISH-FUNC is nil or missing, a future is returned that can
be inspected using `async-get', blocking until the value is
ready.  Example:

    (let ((proc (async-start
                   ;; What to do in the child process
                   (lambda ()
                     (message \"This is a test\")
                     (sleep-for 3)
                     222))))

        (message \"I'm going to do some work here\") ;; ....

        (message \"Waiting on async process, result should be 222: %s\"
                 (async-get proc)))

If you don't want to use a callback, and you don't care about any
return value from the child process, pass the `ignore' symbol as
the second argument (if you don't, and never call `async-get', it
will leave *emacs* process buffers hanging around):

    (async-start
     (lambda ()
       (delete-file \"a remote file on a slow link\" nil))
     'ignore)

Note: Even when FINISH-FUNC is present, a future is still
returned except that it yields no value (since the value is
passed to FINISH-FUNC).  Call `async-get' on such a future always
returns nil.  It can still be useful, however, as an argument to
`async-ready' or `async-wait'.

\(fn START-FUNC &optional FINISH-FUNC)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "async" '("async-")))

;;;***

;;;### (autoloads nil "async-bytecomp" "async-bytecomp.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from async-bytecomp.el

(autoload 'async-byte-recompile-directory "async-bytecomp" "\
Compile all *.el files in DIRECTORY asynchronously.
All *.elc files are systematically deleted before proceeding.

\(fn DIRECTORY &optional QUIET)" nil nil)

(defvar async-bytecomp-package-mode nil "\
Non-nil if Async-Bytecomp-Package mode is enabled.
See the `async-bytecomp-package-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `async-bytecomp-package-mode'.")

(custom-autoload 'async-bytecomp-package-mode "async-bytecomp" nil)

(autoload 'async-bytecomp-package-mode "async-bytecomp" "\
Byte compile asynchronously packages installed with package.el.
Async compilation of packages can be controlled by
`async-bytecomp-allowed-packages'.

If called interactively, enable Async-Bytecomp-Package mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'async-byte-compile-file "async-bytecomp" "\
Byte compile Lisp code FILE asynchronously.

Same as `byte-compile-file' but asynchronous.

\(fn FILE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "async-bytecomp" '("async-byte")))

;;;***

;;;### (autoloads nil "async-test" "async-test.el" (0 0 0 0))
;;; Generated autoloads from async-test.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "async-test" '("async-test-")))

;;;***

;;;### (autoloads nil "auth-source-pass" "auth-source-pass.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from auth-source-pass.el

(autoload 'auth-source-pass-enable "auth-source-pass" "\
Enable auth-source-password-store.

\(fn)" nil nil)

(autoload 'auth-source-pass-get "auth-source-pass" "\
Return the value associated to KEY in the password-store entry ENTRY.

ENTRY is the name of a password-store entry.
The key used to retrieve the password is the symbol `secret'.

The convention used as the format for a password-store file is
the following (see http://www.passwordstore.org/#organization):

secret
key1: value1
key2: value2

\(fn KEY ENTRY)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auth-source-pass" '("auth-source-pass-")))

;;;***

;;;### (autoloads nil "dired-async" "dired-async.el" (0 0 0 0))
;;; Generated autoloads from dired-async.el

(defvar dired-async-mode nil "\
Non-nil if Dired-Async mode is enabled.
See the `dired-async-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dired-async-mode'.")

(custom-autoload 'dired-async-mode "dired-async" nil)

(autoload 'dired-async-mode "dired-async" "\
Do dired actions asynchronously.

If called interactively, enable Dired-Async mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'dired-async-do-copy "dired-async" "\
Run ‘dired-do-copy’ asynchronously.

\(fn &optional ARG)" t nil)

(autoload 'dired-async-do-symlink "dired-async" "\
Run ‘dired-do-symlink’ asynchronously.

\(fn &optional ARG)" t nil)

(autoload 'dired-async-do-hardlink "dired-async" "\
Run ‘dired-do-hardlink’ asynchronously.

\(fn &optional ARG)" t nil)

(autoload 'dired-async-do-rename "dired-async" "\
Run ‘dired-do-rename’ asynchronously.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dired-async" '("dired-async-")))

;;;***

;;;### (autoloads nil "flx" "flx.el" (0 0 0 0))
;;; Generated autoloads from flx.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flx" '("flx-")))

;;;***

;;;### (autoloads nil "flx-ido" "flx-ido.el" (0 0 0 0))
;;; Generated autoloads from flx-ido.el

(defvar flx-ido-mode nil "\
Non-nil if Flx-Ido mode is enabled.
See the `flx-ido-mode' command
for a description of this minor mode.")

(custom-autoload 'flx-ido-mode "flx-ido" nil)

(autoload 'flx-ido-mode "flx-ido" "\
Toggle flx ido mode

If called interactively, enable Flx-Ido mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flx-ido" '("flx-")))

;;;***

;;;### (autoloads nil "gif-screencast" "gif-screencast.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from gif-screencast.el

(autoload 'gif-screencast "gif-screencast" "\
Start recording the GIF.
A screenshot is taken before every command runs.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gif-screencast" '("gif-screencast-")))

;;;***

;;;### (autoloads nil "ibuffer" "ibuffer.el" (0 0 0 0))
;;; Generated autoloads from ibuffer.el

(autoload 'ibuffer-list-buffers "ibuffer" "\
Display a list of buffers, in another window.
If optional argument FILES-ONLY is non-nil, then add a filter for
buffers which are visiting a file.

\(fn &optional FILES-ONLY)" t nil)

(autoload 'ibuffer-other-window "ibuffer" "\
Like `ibuffer', but displayed in another window by default.
If optional argument FILES-ONLY is non-nil, then add a filter for
buffers which are visiting a file.

\(fn &optional FILES-ONLY)" t nil)

(autoload 'ibuffer "ibuffer" "\
Begin using Ibuffer to edit a list of buffers.
Type `h' after entering ibuffer for more information.

All arguments are optional.
OTHER-WINDOW-P says to use another window.
NAME specifies the name of the buffer (defaults to \"*Ibuffer*\").
QUALIFIERS is an initial set of filtering qualifiers to use;
  see `ibuffer-filtering-qualifiers'.
NOSELECT means don't select the Ibuffer buffer.
SHRINK means shrink the buffer to minimal size.  The special
  value `onewindow' means always use another window.
FILTER-GROUPS is an initial set of filtering groups to use;
  see `ibuffer-filter-groups'.
FORMATS is the value to use for `ibuffer-formats'.
  If specified, then the variable `ibuffer-formats' will have
  that value locally in this buffer.

\(fn &optional OTHER-WINDOW-P NAME QUALIFIERS NOSELECT SHRINK FILTER-GROUPS FORMATS)" t nil)

(autoload 'ibuffer-jump "ibuffer" "\
Call Ibuffer and set point at the line listing the current buffer.
If optional arg OTHER-WINDOW is non-nil, then use another window.

\(fn &optional OTHER-WINDOW)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ibuffer" '("filename" "ibuffer-" "locked" "mark" "mod" "name" "process" "read-only" "size")))

;;;***

;;;### (autoloads nil "ido-completing-read+" "ido-completing-read+.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ido-completing-read+.el

(defvar ido-cr+-minibuffer-depth -1 "\
Minibuffer depth of the most recent ido-cr+ activation.

If this equals the current minibuffer depth, then the minibuffer
is currently being used by ido-cr+, and ido-cr+ feature will be
active. Otherwise, something else is using the minibuffer and
ido-cr+ features will be deactivated to avoid interfering with
the other command.

This is set to -1 by default, since `(minibuffer-depth)' should
never return this value.")

(defvar ido-cr+-replace-completely nil "\
If non-nil, replace `ido-completeing-read' completely with ido-cr+.

Enabling this may interfere with or cause errors in other
packages that use `ido-completing-read'. If you discover any such
incompatibilities, please file a bug report at
https://github.com/DarwinAwardWinner/ido-completing-read-plus/issues")

(custom-autoload 'ido-cr+-replace-completely "ido-completing-read+" t)

(defsubst ido-cr+-active nil "\
Returns non-nil if ido-cr+ is currently using the minibuffer." (>= ido-cr+-minibuffer-depth (minibuffer-depth)))

(autoload 'ido-completing-read+ "ido-completing-read+" "\
ido-based method for reading from the minibuffer with completion.

See `completing-read' for the meaning of the arguments.

This function is a wrapper for `ido-completing-read' designed to
be used as the value of `completing-read-function'. Importantly,
it detects edge cases that ido cannot handle and uses normal
completion for them.

\(fn PROMPT COLLECTION &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil)

(autoload 'ido-completing-read@ido-cr+-replace "ido-completing-read+" "\
This advice allows ido-cr+ to completely replace `ido-completing-read'.

See the varaible `ido-cr+-replace-completely' for more information.

\(fn ORIG-FUN &rest ARGS)" nil nil)

(advice-add 'ido-completing-read :around #'ido-completing-read@ido-cr+-replace)

(autoload 'call-interactively@ido-cr+-record-current-command "ido-completing-read+" "\
Let-bind the command being interactively called.

See `ido-cr+-current-command' for more information.

\(fn ORIG-FUN COMMAND &rest ARGS)" nil nil)

(advice-add 'call-interactively :around #'call-interactively@ido-cr+-record-current-command)

(defvar ido-ubiquitous-mode nil "\
Non-nil if Ido-Ubiquitous mode is enabled.
See the `ido-ubiquitous-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ido-ubiquitous-mode'.")

(custom-autoload 'ido-ubiquitous-mode "ido-completing-read+" nil)

(autoload 'ido-ubiquitous-mode "ido-completing-read+" "\
Use ido completion instead of standard completion almost everywhere.

If called interactively, enable Ido-Ubiquitous mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

If this mode causes problems for a function, you can customize
when ido completion is or is not used by customizing
`ido-cr+-function-blacklist'.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ido-completing-read+" '("define-ido-internal-var" "ido-" "minibuf-eldef-update-minibuffer@ido-cr+-compat")))

;;;***

;;;### (autoloads nil "key-chord" "key-chord.el" (0 0 0 0))
;;; Generated autoloads from key-chord.el

(autoload 'key-chord-mode "key-chord" "\
Toggle key chord mode.
With positive ARG enable the mode. With zero or negative arg disable the mode.
A key chord is two keys that are pressed simultaneously, or one key quickly
pressed twice.

See functions `key-chord-define-global', `key-chord-define-local', and
`key-chord-define' and variables `key-chord-two-keys-delay' and
`key-chord-one-key-delay'.

\(fn ARG)" t nil)

(autoload 'key-chord-define-global "key-chord" "\
Define a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

Note that KEYS defined locally in the current buffer will have precedence.

\(fn KEYS COMMAND)" t nil)

(autoload 'key-chord-define-local "key-chord" "\
Locally define a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

The binding goes in the current buffer's local map,
which in most cases is shared with all other buffers in the same major mode.

\(fn KEYS COMMAND)" t nil)

(autoload 'key-chord-define "key-chord" "\
Define in KEYMAP, a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

\(fn KEYMAP KEYS COMMAND)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "key-chord" '("key-chord-")))

;;;***

;;;### (autoloads nil "keycast" "keycast.el" (0 0 0 0))
;;; Generated autoloads from keycast.el

(defvar keycast-mode nil "\
Non-nil if Keycast mode is enabled.
See the `keycast-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `keycast-mode'.")

(custom-autoload 'keycast-mode "keycast" nil)

(autoload 'keycast-mode "keycast" "\
Show current command and its key binding in the mode line.

If called interactively, enable Keycast mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "keycast" '("keycast-" "mode-line-keycast")))

;;;***

;;;### (autoloads nil "org-mime" "org-mime.el" (0 0 0 0))
;;; Generated autoloads from org-mime.el

(autoload 'org-mime-htmlize "org-mime" "\
Export a portion of an email to html using `org-mode'.
If called with an active region only export that region, otherwise entire body.

\(fn)" t nil)

(autoload 'org-mime-org-buffer-htmlize "org-mime" "\
Create an email buffer of the current org buffer.
The email buffer will contain both html and in org formats as mime
alternatives.

The following file keywords can be used to control the headers:
#+MAIL_TO: some1@some.place
#+MAIL_SUBJECT: a subject line
#+MAIL_CC: some2@some.place
#+MAIL_BCC: some3@some.place

The cursor ends in the TO field.

\(fn)" t nil)

(autoload 'org-mime-org-subtree-htmlize "org-mime" "\
Create an email buffer of the current subtree.
The buffer will contain both html and in org formats as mime
alternatives.

The following headline properties can determine the headers.
* subtree heading
   :PROPERTIES:
   :MAIL_SUBJECT: mail title
   :MAIL_TO: person1@gmail.com
   :MAIL_CC: person2@gmail.com
   :MAIL_BCC: person3@gmail.com
   :END:

The cursor is left in the TO field.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-mime" '("org-mime-")))

;;;***

;;;### (autoloads nil "ov" "ov.el" (0 0 0 0))
;;; Generated autoloads from ov.el

(autoload 'ov-clear "ov" "\
Clear overlays satisfying a condition.

If PROP-OR-BEG is a symbol, clear overlays with this property set to non-nil.

If VAL-OR-END is non-nil, the specified property's value should
`equal' to this value.

If both of these are numbers, clear the overlays between these points.

If BEG and END are numbers, clear the overlays with specified
property and value between these points.

With no arguments, clear all overlays in the buffer.

\(fn &optional PROP-OR-BEG (VAL-OR-END \\='any) BEG END)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ov" 'nil))

;;;***

;;;### (autoloads nil "ov-highlight" "ov-highlight.el" (0 0 0 0))
;;; Generated autoloads from ov-highlight.el

(autoload 'ov-highlight-decrease-font-size "ov-highlight" "\
Decrease the font size of the overlay at point.
When no overlay is at the point make one for the region or word
at point. With numeric prefix ARG set font to that size.

\(fn &optional ARG)" t nil)

(autoload 'ov-highlight-clear "ov-highlight" "\
Clear highlight at point.

\(fn)" t nil)

(autoload 'ov-highlight-clear-all "ov-highlight" "\
Clear all highlighted text.
They are really deleted when you save the buffer.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ov-highlight" '("ov-highlight")))

;;;***

;;;### (autoloads nil "ox-extra" "ox-extra.el" (0 0 0 0))
;;; Generated autoloads from ox-extra.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-extra" '("org-" "ox-extras")))

;;;***

;;;### (autoloads nil "sdcv-mode" "sdcv-mode.el" (0 0 0 0))
;;; Generated autoloads from sdcv-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sdcv-mode" '("sdcv-")))

;;;***

;;;### (autoloads nil "smtpmail-async" "smtpmail-async.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from smtpmail-async.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smtpmail-async" '("async-smtpmail-")))

;;;***

;;;### (autoloads nil nil ("async-pkg.el" "async-test-pkg.el" "org-loaddefs.el"
;;;;;;  "ox-tufte-latex.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; async-test-autoloads.el ends here
