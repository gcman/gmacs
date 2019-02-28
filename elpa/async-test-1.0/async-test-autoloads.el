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

;;;### (autoloads nil "bookmark+" "bookmark+.el" (0 0 0 0))
;;; Generated autoloads from bookmark+.el
 (autoload 'bmkp-version-number "bookmark+")
 (autoload 'bmkp-version "bookmark+")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bookmark+" '("bmkp-version")))

;;;***

;;;### (autoloads nil "bookmark+-1" "bookmark+-1.el" (0 0 0 0))
;;; Generated autoloads from bookmark+-1.el
 (autoload 'bmkp-autofile-access-invokes-bookmark-flag "bookmark+")
 (autoload 'bmkp-autofile-filecache "bookmark+")
 (autoload 'bmkp-auto-idle-bookmark-min-distance "bookmark+")
 (autoload 'bmkp-auto-idle-bookmark-mode "bookmark+")
 (autoload 'bmkp-auto-idle-bookmark-mode-delay "bookmark+")
 (autoload 'bmkp-auto-idle-bookmark-mode-lighter "bookmark+")
 (autoload 'bmkp-auto-idle-bookmark-mode-set-function "bookmark+")
 (autoload 'bmkp-autoname-bookmark-function "bookmark+")
 (autoload 'bmkp-autoname-format "bookmark+")
 (autoload 'bmkp-autotemp-bookmark-predicates "bookmark+")
 (autoload 'bmkp-bookmark-name-length-max "bookmark+")
 (autoload 'bmkp-count-multi-mods-as-one-flag "bookmark+")
 (autoload 'bmkp-crosshairs-flag "bookmark+")
 (autoload 'bmkp-default-bookmark-name "bookmark+")
 (autoload 'bmkp-default-handlers-for-file-types "bookmark+")
 (autoload 'bmkp-desktop-default-directory "bookmark+")
 (autoload 'bmkp-desktop-jump-save-before-flag "bookmark+")
 (autoload 'bmkp-desktop-no-save-vars "bookmark+")
 (autoload 'bmkp-annotation-modes-inherit-from "bookmark+")
 (autoload 'bmkp-handle-region-function "bookmark+")
 (autoload 'bmkp-info-sort-ignores-directories-flag "bookmark+")
 (autoload 'bmkp-incremental-filter-delay "bookmark+")
 (autoload 'bmkp-menu-popup-max-length "bookmark+")
 (autoload 'bmkp-new-bookmark-default-names "bookmark+")
 (autoload 'bmkp-other-window-pop-to-flag "bookmark+")
 (autoload 'bmkp-prompt-for-tags-flag "bookmark+")
 (autoload 'bmkp-properties-to-keep "bookmark+")
 (autoload 'bmkp-region-search-size "bookmark+")
 (autoload 'bmkp-save-new-location-flag "bookmark+")
 (autoload 'bmkp-sequence-jump-display-function "bookmark+")
 (autoload 'bmkp-show-end-of-region-flag "bookmark+")
 (autoload 'bmkp-sort-comparer "bookmark+")
 (autoload 'bmkp-su-or-sudo-regexp "bookmark+")
 (autoload 'bmkp-tags-for-completion "bookmark+")
 (autoload 'bmkp-temporary-bookmarking-mode-hook "bookmark+")
 (autoload 'bmkp-this-file/buffer-cycle-sort-comparer "bookmark+")
 (autoload 'bmkp-guess-default-handler-for-file-flag "bookmark+")
 (autoload 'bmkp-read-bookmark-file-hook "bookmark+")
 (autoload 'bmkp-temporary-bookmarking-mode-lighter "bookmark+")
 (autoload 'bmkp-use-region "bookmark+")
 (autoload 'bmkp-w3m-allow-multiple-buffers-flag "bookmark+")
 (autoload 'bmkp-write-bookmark-file-hook "bookmark+")
 (autoload 'bookmark-default-annotation-text "bookmark+")
 (autoload 'bookmark-insert-annotation "bookmark+")
 (autoload 'bookmark-edit-annotation-mode "bookmark+")
 (autoload 'bookmark-send-edited-annotation "bookmark+")
 (autoload 'bookmark-edit-annotation "bookmark+")
 (autoload 'bookmark-set "bookmark+")
 (autoload 'bookmark-yank-word "bookmark+")
 (autoload 'bookmark-jump "bookmark+")
 (autoload 'bookmark-jump-other-window "bookmark+")
 (autoload 'bookmark-jump-other-frame "bookmark+")
 (autoload 'bookmark-relocate "bookmark+")
 (autoload 'bookmark-insert-current-bookmark "bookmark+")
 (autoload 'bookmark-insert-location "bookmark+")
 (autoload 'bookmark-rename "bookmark+")
 (autoload 'bookmark-insert "bookmark+")
 (autoload 'bookmark-delete "bookmark+")
 (autoload 'bookmark-save "bookmark+")
 (autoload 'bookmark-load "bookmark+")
 (autoload 'bookmark-show-annotation "bookmark+")
 (autoload 'bookmark-show-all-annotations "bookmark+")
 (autoload 'bmkp-annotate-bookmark "bookmark+")
 (autoload 'bmkp-show-this-annotation-read-only "bookmark+")
 (autoload 'bmkp-edit-this-annotation "bookmark+")
 (autoload 'bmkp-edit-bookmark-name-and-location "bookmark+")
 (autoload 'bmkp-edit-bookmark-records-send "bookmark+")
 (autoload 'bmkp-edit-bookmark-record "bookmark+")
 (autoload 'bmkp-edit-bookmark-record-send "bookmark+")
 (autoload 'bmkp-edit-tags "bookmark+")
 (autoload 'bmkp-edit-tags-send "bookmark+")
 (autoload 'bmkp-bookmark-set-confirm-overwrite "bookmark+")
 (autoload 'bmkp-send-bug-report "bookmark+")
 (autoload 'bmkp-toggle-bookmark-set-refreshes "bookmark+")
 (autoload 'bmkp-toggle-saving-menu-list-state "bookmark+")
 (autoload 'bmkp-save-menu-list-state "bookmark+")
 (autoload 'bmkp-toggle-saving-bookmark-file "bookmark+")
 (autoload 'bmkp-make-function-bookmark "bookmark+")
 (autoload 'bmkp-set-dired-bookmark-for-files "bookmark+")
 (autoload 'bmkp-revert-bookmark-file "bookmark+")
 (autoload 'bmkp-switch-bookmark-file "bookmark+")
 (autoload 'bmkp-switch-to-last-bookmark-file "bookmark+")
 (autoload 'bmkp-switch-bookmark-file-create "bookmark+")
 (autoload 'bmkp-empty-file "bookmark+")
 (autoload 'bmkp-crosshairs-highlight "bookmark+")
 (autoload 'bmkp-choose-navlist-from-bookmark-list "bookmark+")
 (autoload 'bmkp-choose-navlist-of-type "bookmark+")
 (autoload 'bmkp-this-file/buffer-bmenu-list "bookmark+")
 (autoload 'bmkp-this-file-bmenu-list "bookmark+")
 (autoload 'bmkp-this-buffer-bmenu-list "bookmark+")
 (autoload 'bmkp-navlist-bmenu-list "bookmark+")
 (autoload 'bmkp-unomit-all "bookmark+")
 (autoload 'bmkp-list-all-tags "bookmark+")
 (autoload 'bmkp-remove-all-tags "bookmark+")
 (autoload 'bmkp-add-tags "bookmark+")
 (autoload 'bmkp-set-tag-value-for-navlist "bookmark+")
 (autoload 'bmkp-set-tag-value "bookmark+")
 (autoload 'bmkp-remove-tags "bookmark+")
 (autoload 'bmkp-remove-tags-from-all "bookmark+")
 (autoload 'bmkp-rename-tag "bookmark+")
 (autoload 'bmkp-copy-tags "bookmark+")
 (autoload 'bmkp-paste-add-tags "bookmark+")
 (autoload 'bmkp-paste-replace-tags "bookmark+")
 (autoload 'bmkp-url-target-set "bookmark+")
 (autoload 'bmkp-file-target-set "bookmark+")
 (autoload 'bmkp-bookmark-a-file "bookmark+")
 (autoload 'bmkp-autofile-set "bookmark+")
 (autoload 'bmkp-tag-a-file "bookmark+")
 (autoload 'bmkp-autofile-add-tags "bookmark+")
 (autoload 'bmkp-untag-a-file "bookmark+")
 (autoload 'bmkp-autofile-remove-tags "bookmark+")
 (autoload 'bmkp-purge-notags-autofiles "bookmark+")
 (autoload 'bmkp-describe-bookmark "bookmark+")
 (autoload 'bmkp-describe-bookmark-internals "bookmark+")
 (autoload 'bmkp-list-defuns-in-commands-file "bookmark+")
 (autoload 'bmkp-set-bookmark-file-bookmark "bookmark+")
 (autoload 'bmkp-bookmark-file-jump "bookmark+")
 (autoload 'bmkp-bookmark-file-load-jump "bookmark+")
 (autoload 'bmkp-bookmark-file-switch-jump "bookmark+")
 (autoload 'bmkp-set-snippet-bookmark "bookmark+")
 (autoload 'bmkp-snippet-to-kill-ring "bookmark+")
 (autoload 'bmkp-set-desktop-bookmark "bookmark+")
 (autoload 'bmkp-desktop-change-dir "bookmark+")
 (autoload 'bmkp-desktop-read "bookmark+")
 (autoload 'bmkp-desktop-delete "bookmark+")
 (autoload 'bmkp-retrieve-icicle-search-hits "bookmark+")
 (autoload 'bmkp-retrieve-more-icicle-search-hits "bookmark+")
 (autoload 'bmkp-set-icicle-search-hits-bookmark "bookmark+")
 (autoload 'bmkp-wrap-bookmark-with-last-kbd-macro "bookmark+")
 (autoload 'bmkp-set-sequence-bookmark "bookmark+")
 (autoload 'bmkp-set-variable-list-bookmark "bookmark+")
 (autoload 'bmkp-dired-subdirs "bookmark+")
 (autoload 'bmkp-jump-to-type "bookmark+")
 (autoload 'bmkp-jump-to-type-other-window "bookmark+")
 (autoload 'bmkp-autonamed-jump "bookmark+")
 (autoload 'bmkp-autonamed-jump-other-window "bookmark+")
 (autoload 'bmkp-autonamed-this-buffer-jump "bookmark+")
 (autoload 'bmkp-autonamed-this-buffer-jump-other-window "bookmark+")
 (autoload 'bmkp-bookmark-list-jump "bookmark+")
 (autoload 'bmkp-desktop-jump "bookmark+")
 (autoload 'bmkp-dired-jump "bookmark+")
 (autoload 'bmkp-dired-jump-other-window "bookmark+")
 (autoload 'bmkp-dired-this-dir-jump "bookmark+")
 (autoload 'bmkp-dired-this-dir-jump-other-window "bookmark+")
 (autoload 'bmkp-file-jump "bookmark+")
 (autoload 'bmkp-file-jump-other-window "bookmark+")
 (autoload 'bmkp-file-this-dir-jump "bookmark+")
 (autoload 'bmkp-file-this-dir-jump-other-window "bookmark+")
 (autoload 'bmkp-gnus-jump "bookmark+")
 (autoload 'bmkp-gnus-jump-other-window "bookmark+")
 (autoload 'bmkp-image-jump "bookmark+")
 (autoload 'bmkp-image-jump-other-window "bookmark+")
 (autoload 'bmkp-info-jump "bookmark+")
 (autoload 'bmkp-info-jump-other-window "bookmark+")
 (autoload 'bmkp-local-file-jump "bookmark+")
 (autoload 'bmkp-local-file-jump-other-window "bookmark+")
 (autoload 'bmkp-local-non-dir-file-jump "bookmark+")
 (autoload 'bmkp-local-non-dir-file-jump-other-window "bookmark+")
 (autoload 'bmkp-man-jump "bookmark+")
 (autoload 'bmkp-man-jump-other-window "bookmark+")
 (autoload 'bmkp-non-dir-file-jump "bookmark+")
 (autoload 'bmkp-non-dir-file-jump-other-window "bookmark+")
 (autoload 'bmkp-non-file-jump "bookmark+")
 (autoload 'bmkp-non-file-jump-other-window "bookmark+")
 (autoload 'bmkp-region-jump "bookmark+")
 (autoload 'bmkp-region-jump-other-window "bookmark+")
 (autoload 'bmkp-region-jump-narrow-indirect-other-window "bookmark+")
 (autoload 'bmkp-remote-file-jump "bookmark+")
 (autoload 'bmkp-remote-file-jump-other-window "bookmark+")
 (autoload 'bmkp-remote-non-dir-file-jump "bookmark+")
 (autoload 'bmkp-remote-non-dir-file-jump-other-window "bookmark+")
 (autoload 'bmkp-specific-buffers-jump "bookmark+")
 (autoload 'bmkp-specific-buffers-jump-other-window "bookmark+")
 (autoload 'bmkp-specific-files-jump "bookmark+")
 (autoload 'bmkp-specific-files-jump-other-window "bookmark+")
 (autoload 'bmkp-temporary-jump "bookmark+")
 (autoload 'bmkp-temporary-jump-other-window "bookmark+")
 (autoload 'bmkp-this-buffer-jump "bookmark+")
 (autoload 'bmkp-this-buffer-jump-other-window "bookmark+")
 (autoload 'bmkp-variable-list-jump "bookmark+")
 (autoload 'bmkp-url-jump "bookmark+")
 (autoload 'bmkp-url-jump-other-window "bookmark+")
 (autoload 'bmkp-w32-browser-jump "bookmark+")
 (autoload 'bmkp-w3m-jump "bookmark+")
 (autoload 'bmkp-w3m-jump-other-window "bookmark+")
 (autoload 'bmkp-all-tags-jump "bookmark+")
 (autoload 'bmkp-all-tags-jump-other-window "bookmark+")
 (autoload 'bmkp-all-tags-regexp-jump "bookmark+")
 (autoload 'bmkp-all-tags-regexp-jump-other-window "bookmark+")
 (autoload 'bmkp-some-tags-jump "bookmark+")
 (autoload 'bmkp-some-tags-jump-other-window "bookmark+")
 (autoload 'bmkp-some-tags-regexp-jump "bookmark+")
 (autoload 'bmkp-some-tags-regexp-jump-other-window "bookmark+")
 (autoload 'bmkp-file-all-tags-jump "bookmark+")
 (autoload 'bmkp-file-all-tags-jump-other-window "bookmark+")
 (autoload 'bmkp-file-all-tags-regexp-jump "bookmark+")
 (autoload 'bmkp-file-all-tags-regexp-jump-other-window "bookmark+")
 (autoload 'bmkp-file-some-tags-jump "bookmark+")
 (autoload 'bmkp-file-some-tags-jump-other-window "bookmark+")
 (autoload 'bmkp-file-some-tags-regexp-jump "bookmark+")
 (autoload 'bmkp-file-some-tags-regexp-jump-other-window "bookmark+")
 (autoload 'bmkp-file-this-dir-all-tags-jump "bookmark+")
 (autoload 'bmkp-file-this-dir-all-tags-jump-other-window "bookmark+")
 (autoload 'bmkp-file-this-dir-all-tags-regexp-jump "bookmark+")
 (autoload 'bmkp-file-this-dir-all-tags-regexp-jump-other-window "bookmark+")
 (autoload 'bmkp-file-this-dir-some-tags-jump "bookmark+")
 (autoload 'bmkp-file-this-dir-some-tags-jump-other-window "bookmark+")
 (autoload 'bmkp-file-this-dir-some-tags-regexp-jump "bookmark+")
 (autoload 'bmkp-file-this-dir-some-tags-regexp-jump-other-window "bookmark+")
 (autoload 'bmkp-autofile-jump "bookmark+")
 (autoload 'bmkp-autofile-jump-other-window "bookmark+")
 (autoload 'bmkp-autofile-all-tags-jump "bookmark+")
 (autoload 'bmkp-autofile-all-tags-jump-other-window "bookmark+")
 (autoload 'bmkp-autofile-all-tags-regexp-jump "bookmark+")
 (autoload 'bmkp-autofile-all-tags-regexp-jump-other-window "bookmark+")
 (autoload 'bmkp-autofile-some-tags-jump "bookmark+")
 (autoload 'bmkp-autofile-some-tags-jump-other-window "bookmark+")
 (autoload 'bmkp-autofile-some-tags-regexp-jump "bookmark+")
 (autoload 'bmkp-autofile-some-tags-regexp-jump-other-window "bookmark+")
 (autoload 'bmkp-find-file-all-tags-regexp-other-window "bookmark+")
 (autoload 'bmkp-find-file-some-tags "bookmark+")
 (autoload 'bmkp-find-file-some-tags-other-window "bookmark+")
 (autoload 'bmkp-find-file-some-tags-regexp "bookmark+")
 (autoload 'bmkp-find-file-some-tags-regexp-other-window "bookmark+")
 (autoload 'bmkp-jump-in-navlist "bookmark+")
 (autoload 'bmkp-jump-in-navlist-other-window "bookmark+")
 (autoload 'bmkp-cycle "bookmark+")
 (autoload 'bmkp-cycle-other-window "bookmark+")
 (autoload 'bmkp-cycle-this-file/buffer "bookmark+")
 (autoload 'bmkp-cycle-this-file/buffer-other-window "bookmark+")
 (autoload 'bmkp-cycle-this-file "bookmark+")
 (autoload 'bmkp-cycle-this-file-other-window "bookmark+")
 (autoload 'bmkp-cycle-this-buffer "bookmark+")
 (autoload 'bmkp-cycle-this-buffer-other-window "bookmark+")
 (autoload 'bmkp-next-bookmark "bookmark+")
 (autoload 'bmkp-previous-bookmark "bookmark+")
 (autoload 'bmkp-next-bookmark-other-window "bookmark+")
 (autoload 'bmkp-previous-bookmark-other-window "bookmark+")
 (autoload 'bmkp-next-bookmark-repeat "bookmark+")
 (autoload 'bmkp-previous-bookmark-repeat "bookmark+")
 (autoload 'bmkp-next-bookmark-other-window-repeat "bookmark+")
 (autoload 'bmkp-previous-bookmark-other-window-repeat "bookmark+")
 (autoload 'bmkp-next-bookmark-this-file/buffer "bookmark+")
 (autoload 'bmkp-previous-bookmark-this-file/buffer "bookmark+")
 (autoload 'bmkp-next-bookmark-this-file/buffer-repeat "bookmark+")
 (autoload 'bmkp-previous-bookmark-this-file/buffer-repeat "bookmark+")
 (autoload 'bmkp-next-bookmark-this-file "bookmark+")
 (autoload 'bmkp-previous-bookmark-this-file "bookmark+")
 (autoload 'bmkp-next-bookmark-this-file-repeat "bookmark+")
 (autoload 'bmkp-previous-bookmark-this-file-repeat "bookmark+")
 (autoload 'bmkp-next-bookmark-this-buffer "bookmark+")
 (autoload 'bmkp-previous-bookmark-this-buffer "bookmark+")
 (autoload 'bmkp-next-bookmark-this-buffer-repeat "bookmark+")
 (autoload 'bmkp-previous-bookmark-this-buffer-repeat "bookmark+")
 (autoload 'bmkp-next-bookmark-w32 "bookmark+")
 (autoload 'bmkp-previous-bookmark-w32 "bookmark+")
 (autoload 'bmkp-next-bookmark-w32-repeat "bookmark+")
 (autoload 'bmkp-previous-bookmark-w32-repeat "bookmark+")
 (autoload 'bmkp-toggle-autonamed-bookmark-set/delete "bookmark+")
 (autoload 'bmkp-set-autonamed-bookmark "bookmark+")
 (autoload 'bmkp-set-autonamed-bookmark-at-line "bookmark+")
 (autoload 'bmkp-set-autonamed-regexp-buffer "bookmark+")
 (autoload 'bmkp-set-autonamed-regexp-region "bookmark+")
 (autoload 'bmkp-delete-all-autonamed-for-this-buffer "bookmark+")
 (autoload 'bmkp-toggle-autotemp-on-set "bookmark+")
 (autoload 'bmkp-toggle-temporary-bookmark "bookmark+")
 (autoload 'bmkp-make-bookmark-temporary "bookmark+")
 (autoload 'bmkp-make-bookmark-savable "bookmark+")
 (autoload 'bmkp-delete-all-temporary-bookmarks "bookmark+")
 (autoload 'bmkp-delete-bookmarks "bookmark+")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bookmark+-1" '("bmk" "bookmark")))

;;;***

;;;### (autoloads nil "bookmark+-bmu" "bookmark+-bmu.el" (0 0 0 0))
;;; Generated autoloads from bookmark+-bmu.el
 (autoload 'bmkp-bmenu-omitted-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-commands-file "bookmark+")
 (autoload 'bmkp-bmenu-state-file "bookmark+")
 (autoload 'bmkp-bmenu-image-bookmark-icon-file "bookmark+")
 (autoload 'bookmark-bmenu-mark "bookmark+")
 (autoload 'bookmark-bmenu-unmark "bookmark+")
 (autoload 'bmkp-bmenu-flag-for-deletion "bookmark+")
 (autoload 'bookmark-bmenu-delete "bookmark+")
 (autoload 'bmkp-bmenu-flag-for-deletion-backwards "bookmark+")
 (autoload 'bookmark-bmenu-delete-backwards "bookmark+")
 (autoload 'list-bookmarks "bookmark+")
 (autoload 'bookmark-bmenu-list "bookmark+")
 (autoload 'bookmark-bmenu-1-window "bookmark+")
 (autoload 'bookmark-bmenu-2-window "bookmark+")
 (autoload 'bookmark-bmenu-this-window "bookmark+")
 (autoload 'bookmark-bmenu-other-window "bookmark+")
 (autoload 'bookmark-bmenu-other-window "bookmark+")
 (autoload 'bookmark-bmenu-switch-other-window "bookmark+")
 (autoload 'bookmark-bmenu-other-window-with-mouse "bookmark+")
 (autoload 'bookmark-bmenu-show-annotation "bookmark+")
 (autoload 'bookmark-bmenu-execute-deletions "bookmark+")
 (autoload 'bookmark-bmenu-rename "bookmark+")
 (autoload 'bmkp-bmenu-show-only-autonamed-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-non-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-dired-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-function-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-gnus-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-icicles-search-hits-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-non-invokable-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-image-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-info-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-desktop-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-man-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-region-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-tagged-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-untagged-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-url-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-variable-list-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-snippet-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-w3m-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-temporary-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-bookmark-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-bookmark-list-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-all "bookmark+")
 (autoload 'bmkp-bmenu-show-only-autofile-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-orphaned-local-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-specific-buffer-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-show-only-specific-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-refresh-menu-list "bookmark+")
 (autoload 'bmkp-bmenu-filter-bookmark-name-incrementally "bookmark+")
 (autoload 'bmkp-bmenu-filter-file-name-incrementally "bookmark+")
 (autoload 'bmkp-bmenu-filter-annotation-incrementally "bookmark+")
 (autoload 'bmkp-bmenu-filter-tags-incrementally "bookmark+")
 (autoload 'bmkp-bmenu-toggle-show-only-unmarked "bookmark+")
 (autoload 'bmkp-bmenu-toggle-show-only-marked "bookmark+")
 (autoload 'bmkp-bmenu-mark-all "bookmark+")
 (autoload 'bmkp-bmenu-unmark-all "bookmark+")
 (autoload 'bmkp-bmenu-regexp-mark "bookmark+")
 (autoload 'bmkp-bmenu-mark-autofile-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-autonamed-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-bookmark-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-bookmark-list-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-desktop-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-dired-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-function-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-gnus-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-icicles-search-hits-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-image-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-info-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-man-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-non-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-non-invokable-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-orphaned-local-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-region-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-snippet-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-specific-buffer-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-specific-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-temporary-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-variable-list-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-url-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-w3m-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-mark-bookmarks-satisfying "bookmark+")
 (autoload 'bmkp-bmenu-toggle-marks "bookmark+")
 (autoload 'bmkp-bmenu-toggle-marked-temporary/savable "bookmark+")
 (autoload 'bmkp-bmenu-toggle-temporary "bookmark+")
 (autoload 'bmkp-bmenu-dired-marked "bookmark+")
 (autoload 'bmkp-bmenu-delete-marked "bookmark+")
 (autoload 'bmkp-bmenu-move-marked-to-bookmark-file "bookmark+")
 (autoload 'bmkp-bmenu-copy-marked-to-bookmark-file "bookmark+")
 (autoload 'bmkp-bmenu-create-bookmark-file-from-marked "bookmark+")
 (autoload 'bmkp-bmenu-set-bookmark-file-bookmark-from-marked "bookmark+")
 (autoload 'bmkp-bmenu-load-marked-bookmark-file-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-load-marking "bookmark+")
 (autoload 'bmkp-bmenu-load-marking-unmark-first "bookmark+")
 (autoload 'bmkp-bmenu-make-sequence-from-marked "bookmark+")
 (autoload 'bmkp-bmenu-omit "bookmark+")
 (autoload 'bmkp-bmenu-omit/unomit-marked "bookmark+")
 (autoload 'bmkp-bmenu-omit-marked "bookmark+")
 (autoload 'bmkp-bmenu-unomit-marked "bookmark+")
 (autoload 'bmkp-bmenu-show-only-omitted-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-search-marked-bookmarks-regexp "bookmark+")
 (autoload 'bmkp-bmenu-query-replace-marked-bookmarks-regexp "bookmark+")
 (autoload 'bmkp-bmenu-remove-all-tags "bookmark+")
 (autoload 'bmkp-bmenu-add-tags "bookmark+")
 (autoload 'bmkp-bmenu-set-tag-value "bookmark+")
 (autoload 'bmkp-bmenu-set-tag-value-for-marked "bookmark+")
 (autoload 'bmkp-bmenu-remove-tags "bookmark+")
 (autoload 'bmkp-bmenu-add-tags-to-marked "bookmark+")
 (autoload 'bmkp-bmenu-remove-tags-from-marked "bookmark+")
 (autoload 'bmkp-bmenu-list-tags-of-marked "bookmark+")
 (autoload 'bmkp-bmenu-mark-bookmarks-tagged-regexp "bookmark+")
 (autoload 'bmkp-bmenu-mark-bookmarks-tagged-all "bookmark+")
 (autoload 'bmkp-bmenu-mark-bookmarks-tagged-none "bookmark+")
 (autoload 'bmkp-bmenu-mark-bookmarks-tagged-some "bookmark+")
 (autoload 'bmkp-bmenu-mark-bookmarks-tagged-not-all "bookmark+")
 (autoload 'bmkp-bmenu-unmark-bookmarks-tagged-regexp "bookmark+")
 (autoload 'bmkp-bmenu-unmark-bookmarks-tagged-all "bookmark+")
 (autoload 'bmkp-bmenu-unmark-bookmarks-tagged-none "bookmark+")
 (autoload 'bmkp-bmenu-unmark-bookmarks-tagged-some "bookmark+")
 (autoload 'bmkp-bmenu-unmark-bookmarks-tagged-not-all "bookmark+")
 (autoload 'bmkp-bmenu-copy-tags "bookmark+")
 (autoload 'bmkp-bmenu-paste-add-tags "bookmark+")
 (autoload 'bmkp-bmenu-paste-replace-tags "bookmark+")
 (autoload 'bmkp-bmenu-paste-add-tags-to-marked "bookmark+")
 (autoload 'bmkp-bmenu-paste-replace-tags-for-marked "bookmark+")
 (autoload 'bmkp-bmenu-show-or-edit-annotation "bookmark+")
 (autoload 'bmkp-bmenu-jump-to-marked "bookmark+")
 (autoload 'bmkp-bmenu-w32-open "bookmark+")
 (autoload 'bmkp-bmenu-w32-open-with-mouse "bookmark+")
 (autoload 'bmkp-bmenu-w32-jump-to-marked "bookmark+")
 (autoload 'bmkp-bmenu-mode-status-help "bookmark+")
 (autoload 'bmkp-bmenu-define-jump-marked-command "bookmark+")
 (autoload 'bmkp-bmenu-define-command "bookmark+")
 (autoload 'bmkp-bmenu-define-full-snapshot-command "bookmark+")
 (autoload 'bmkp-define-tags-sort-command "bookmark+")
 (autoload 'bmkp-bmenu-relocate-marked "bookmark+")
 (autoload 'bmkp-bmenu-edit-bookmark-name-and-location "bookmark+")
 (autoload 'bmkp-bmenu-edit-tags "bookmark+")
 (autoload 'bmkp-bmenu-edit-bookmark-record "bookmark+")
 (autoload 'bmkp-bmenu-edit-marked "bookmark+")
 (autoload 'bmkp-bmenu-quit "bookmark+")
 (autoload 'bmkp-bmenu-change-sort-order-repeat "bookmark+")
 (autoload 'bmkp-bmenu-change-sort-order "bookmark+")
 (autoload 'bmkp-reverse-sort-order "bookmark+")
 (autoload 'bmkp-reverse-multi-sort-order "bookmark+")
 (autoload 'bmkp-bmenu-show-this-annotation+move-down "bookmark+")
 (autoload 'bmkp-bmenu-show-this-annotation+move-up "bookmark+")
 (autoload 'bmkp-bmenu-describe-this+move-down "bookmark+")
 (autoload 'bmkp-bmenu-describe-this+move-up "bookmark+")
 (autoload 'bmkp-bmenu-describe-this-bookmark "bookmark+")
 (autoload 'bmkp-bmenu-describe-marked "bookmark+")
 (autoload 'bmkp-bmenu-mouse-3-menu "bookmark+")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bookmark+-bmu" '("bmkp-" "bookmark-bmenu-" "list-bookmarks" "menu-bar-edit-menu")))

;;;***

;;;### (autoloads nil "bookmark+-key" "bookmark+-key.el" (0 0 0 0))
;;; Generated autoloads from bookmark+-key.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bookmark+-key" '("bmkp-" "menu-bar-bookmark-map")))

;;;***

;;;### (autoloads nil "bookmark+-lit" "bookmark+-lit.el" (0 0 0 0))
;;; Generated autoloads from bookmark+-lit.el
 (autoload 'bmkp-auto-light-relocate-when-jump-flag "bookmark+")
 (autoload 'bmkp-auto-light-when-jump "bookmark+")
 (autoload 'bmkp-auto-light-when-set "bookmark+")
 (autoload 'bmkp-light-priorities "bookmark+")
 (autoload 'bmkp-light-style-autonamed "bookmark+")
 (autoload 'bmkp-light-style-non-autonamed "bookmark+")
 (autoload 'bmkp-light-style-autonamed-region "bookmark+")
 (autoload 'bmkp-light-style-non-autonamed-region "bookmark+")
 (autoload 'bmkp-light-threshold "bookmark+")
 (autoload 'bmkp-bmenu-show-only-lighted-bookmarks "bookmark+")
 (autoload 'bmkp-bmenu-light "bookmark+")
 (autoload 'bmkp-bmenu-light-marked "bookmark+")
 (autoload 'bmkp-bmenu-unlight "bookmark+")
 (autoload 'bmkp-bmenu-unlight-marked "bookmark+")
 (autoload 'bmkp-bmenu-set-lighting "bookmark+")
 (autoload 'bmkp-bmenu-set-lighting-for-marked "bookmark+")
 (autoload 'bmkp-bookmarks-lighted-at-point "bookmark+")
 (autoload 'bmkp-toggle-auto-light-when-jump "bookmark+")
 (autoload 'bmkp-lighted-jump "bookmark+")
 (autoload 'bmkp-lighted-jump-other-window "bookmark+")
 (autoload 'bmkp-unlight-bookmark "bookmark+")
 (autoload 'bmkp-unlight-bookmark-here "bookmark+")
 (autoload 'bmkp-unlight-bookmark-this-buffer "bookmark+")
 (autoload 'bmkp-unlight-bookmarks "bookmark+")
 (autoload 'bmkp-unlight-autonamed-this-buffer "bookmark+")
 (autoload 'bmkp-unlight-non-autonamed-this-buffer "bookmark+")
 (autoload 'bmkp-unlight-this-buffer "bookmark+")
 (autoload 'bmkp-toggle-auto-light-when-set "bookmark+")
 (autoload 'bmkp-set-lighting-for-bookmark "bookmark+")
 (autoload 'bmkp-set-lighting-for-buffer "bookmark+")
 (autoload 'bmkp-set-lighting-for-this-buffer "bookmark+")
 (autoload 'bmkp-light-bookmark "bookmark+")
 (autoload 'bmkp-light-bookmark-this-buffer "bookmark+")
 (autoload 'bmkp-light-bookmarks "bookmark+")
 (autoload 'bmkp-light-navlist-bookmarks "bookmark+")
 (autoload 'bmkp-light-this-buffer "bookmark+")
 (autoload 'bmkp-light-bookmarks-in-region "bookmark+")
 (autoload 'bmkp-light-autonamed-this-buffer "bookmark+")
 (autoload 'bmkp-light-non-autonamed-this-buffer "bookmark+")
 (autoload 'bmkp-cycle-lighted-this-buffer "bookmark+")
 (autoload 'bmkp-cycle-lighted-this-buffer-other-window "bookmark+")
 (autoload 'bmkp-next-lighted-this-buffer "bookmark+")
 (autoload 'bmkp-previous-lighted-this-buffer "bookmark+")
 (autoload 'bmkp-next-lighted-this-buffer-repeat "bookmark+")
 (autoload 'bmkp-previous-lighted-this-buffer-repeat "bookmark+")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bookmark+-lit" '("bmkp-")))

;;;***

;;;### (autoloads nil "bookmark+-mac" "bookmark+-mac.el" (0 0 0 0))
;;; Generated autoloads from bookmark+-mac.el
 (autoload 'bmkp-with-help-window "bookmark+")
 (autoload 'bmkp-with-output-to-plain-temp-buffer "bookmark+")
 (autoload 'bmkp-define-cycle-command "bookmark+")
 (autoload 'bmkp-define-next+prev-cycle-commands "bookmark+")
 (autoload 'bmkp-define-show-only-command "bookmark+")
 (autoload 'bmkp-define-sort-command "bookmark+")
 (autoload 'bmkp-define-file-sort-predicate "bookmark+")
 (autoload 'bmkp-menu-bar-make-toggle "bookmark+")
 (autoload 'bmkp-with-bookmark-dir "bookmark+")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bookmark+-mac" '("bmkp-")))

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

;;;### (autoloads nil "ipa" "ipa.el" (0 0 0 0))
;;; Generated autoloads from ipa.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ipa" '("ipa-")))

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

;;;### (autoloads nil "org-annotate-file" "org-annotate-file.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-annotate-file.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-annotate-file" '("org-annotate-file")))

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

;;;### (autoloads "actual autoloads are elsewhere" "ox-tufte-latex"
;;;;;;  "ox-tufte-latex.el" (0 0 0 0))
;;; Generated autoloads from ox-tufte-latex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-tufte-latex" '("org-")))

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

;;;### (autoloads nil nil ("async-pkg.el" "bookmark+-chg.el" "bookmark+-doc.el"
;;;;;;  "ox-tufte-latex.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; async-test-autoloads.el ends here
