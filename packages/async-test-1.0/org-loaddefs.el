;;; org-loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "ox-tufte-latex" "ox-tufte-latex.el" "86757850448746159e1162c789b8d4e6")
;;; Generated autoloads from ox-tufte-latex.el

(autoload 'org-tufte-latex-export-as-latex "ox-tufte-latex" "\
Export current buffer to a Tufte LaTeX buffer.

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

Export is done in a buffer named \"*Org Tufte LaTeX Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-tufte-latex-convert-region-to-latex "ox-tufte-latex" "\
Assume the current region has org-mode syntax, and convert it
to Tufte LaTeX.  This can be used in any buffer.
For example, you can write an itemized list in org-mode syntax in
a Tufte LaTeX buffer and use this command to convert it.

\(fn)" t nil)

(autoload 'org-tufte-latex-export-to-latex "ox-tufte-latex" "\
Export current buffer to a Tufte LaTeX file.

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

;;;***

(provide 'org-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-loaddefs.el ends here
