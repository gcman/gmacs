;;( package-initialize)
(org-babel-load-file (expand-file-name "~/.emacs.d/gautam.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(ido-use-filename-at-point 'guess)
 '(ivy-display-style 'fancy)
 '(ivy-initial-inputs-alist nil t)
 '(ivy-re-builders-alist '((swiper . ivy--regex-plus) (t . ivy--regex-fuzzy)) t)
 '(ivy-use-virtual-buffers t)
 '(org-agenda-files
   '("~/org/inbox.org" "~/org/gtd.org" "~/org/tickler.org" "~/org/notes.org" "~/org/gcal.org"))
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
     ("T" "Tickler" entry
      (file+headline "~/org/tickler.org" "Tickler")
      "* %i%?
:PROPERTIES:
:CREATED: %U
:END:")
     ("j" "Journal" entry
      (file+datetree "~/org/journal.org")
      "** %^{Heading}
:PROPERTIES:
:CREATED: %U
:END:")) t)
 '(org-default-notes-file "~/org/inbox.org")
 '(org-directory "~/org/")
 '(org-refile-targets
   '(("~/org/gtd.org" :maxlevel . 3)
     ("~/org/someday.org" :level . 1)
     ("~/org/tickler.org" :maxlevel . 2)
     ("~/org/notes.org" :maxlevel . 2)
     ("~/website/content-org/blog.org" :maxlevel . 1)))
 '(org-todo-keywords
   '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))
 '(package-selected-packages
   '(expand-region linum-relative trie ivy-explorer yasnippet which-key web-mode use-package swiper solarized-theme smart-mode-line rainbow-mode pdf-tools ox-hugo org-wc org-gcal org-cliplink org-bullets magit keyfreq ido-grid-mode god-mode dired-quick-sort diminish company cdlatex avy auctex amx adaptive-wrap))
 '(pdf-view-midnight-colors '("#657b83" . "#fdf6e3"))
 '(preview-default-preamble
   '("\\RequirePackage["
     ("," . preview-default-option-list)
     "]{preview}[2004/11/05]" "\\renewenvironment{equation}{equation*}"))
 '(safe-local-variable-values '((after-save-hook . gm/org-latex-export)))
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
 '(fringe ((t (:background "#fdf6e3"))))
 '(variable-pitch ((t (:family "Palatino Linotype")))))
