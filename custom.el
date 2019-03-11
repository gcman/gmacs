(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-color "#b58900")
 '(beacon-push-mark 35)
 '(custom-safe-themes
   '("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(flycheck-display-errors-delay 0.3)
 '(ivy-display-style 'fancy)
 '(ivy-initial-inputs-alist nil)
 '(ivy-re-builders-alist
   '((swiper . ivy--regex-plus)
     (ivy-switch-buffer . ivy--regex-plus)
     (t . ivy--regex-fuzzy)) t)
 '(ivy-use-virtual-buffers t)
 '(minibuffer-prompt-properties '(read-only t cursor-intangible t face minibuffer-prompt))
 '(nms-settings-file "/home/gautam/.emacs.d/cache/network-security.data" t)
 '(org-agenda-files
   '("~/org/inbox.org" "~/org/gtd.org" "~/org/notes.org" "~/org/gcal.org"))
 '(org-capture-templates
   '(("a" "Appointment" entry
      (file "~/org/gcal.org")
      "* %i%?
%^T
")
     ("t" "Todo [inbox]" entry
      (file "~/org/inbox.org")
      "* TODO %i%?
:PROPERTIES:
:CREATED: %U
:END:")
     ("j" "Journal" entry
      (file+olp+datetree "~/org/journal.org")
      "** %^{Heading}
:PROPERTIES:
:CREATED: %U
:END:")
     ("e" "euler" entry
      (file+olp "~/website/content-org/blog.org" "Euler")
      "** Project Euler %^{Problem Number}: %^{Problem Name} %^g
:PROPERTIES:
:EXPORT_FILE_NAME: %\\1
:EXPORT_DATE: %u
:EXPORT_DESCRIPTION: My solution to problem %\\1 of Project Euler.
:END:
*** Problem Statement
%?
*** My Algorithm")
     ("b" "Bookmark" entry
      (file "~/org/inbox.org")
      "* [[%:link][%:description]]
:PROPERTIES:
:CREATED: %U
:END:
%:initial
%?")))
 '(org-default-notes-file "~/org/inbox.org")
 '(org-directory "~/org/")
 '(org-gcal-dir "/home/gautam/.emacs.d/cache/" t)
 '(org-latex-compiler "xetex")
 '(org-refile-targets
   '(("~/org/gtd.org" :maxlevel . 3)
     ("~/org/someday.org" :level . 1)
     ("~/org/tickler.org" :maxlevel . 2)
     ("~/org/notes.org" :maxlevel . 2)))
 '(org-todo-keywords
   '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))
 '(package-selected-packages
   '(aggressive-fill-paragraph esup org-plus-contrib nlinum-relative uniquify elpy delight aggressive-indent sdcv-mode yasnippet yaml-mode ws-butler which-key web-mode use-package unfill undo-tree sudo-edit solarized-theme smex smart-mode-line rjsx-mode rainbow-mode rainbow-delimiters py-autopep8 projectile pdf-tools ox-hugo org-wc org-mime org-gcal org-cliplink org-bullets notmuch nix-mode neotree multiple-cursors markdown-mode magit lua-mode lispy linum-relative ledger-mode keyfreq hungry-delete god-mode ghc flycheck flx f expand-region dtrt-indent dired-quick-sort diminish diff-hl default-text-scale counsel company browse-kill-ring beacon bbdb auctex async-test ag adaptive-wrap))
 '(pdf-misc-print-programm "/usr/bin/gtklp")
 '(safe-local-variable-values
   '((after-save-hook lambda nil
                      (save-excursion
                        (org-hugo-export-wim-to-md)))
     (after-save-hook lambda nil
                      (save-excursion org-hugo-export-wim-to-md))
     (after-save-hook . org-hugo-export-wim-to-md)
     (after-save-hook . org-babel-tangle)
     (eval ov-highlight-load)
     (after-save-hook . gm/org-latex-export)
     (org-hugo-auto-export-on-save . t)))
 '(smex-save-file "/home/gautam/.emacs.d/cache/smex")
 '(uniquify-after-kill-buffer-p t)
 '(uniquify-buffer-name-style 'post-forward nil (uniquify))
 '(uniquify-strip-common-suffix t)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(variable-pitch ((t (:family "Palatino Linotype")))))
