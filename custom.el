(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-color "#b58900")
 '(beacon-push-mark 35)
 '(bibtex-dialect (quote biblatex))
 '(counsel-grep-base-command "rg -i -M 120 --color auto --line-number %s %s")
 '(custom-safe-themes
   (quote
    ("d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(desktop-environment-screenshot-directory "~/pictures")
 '(epa-file-cache-passphrase-for-symmetric-encryption t)
 '(epa-file-select-keys nil)
 '(epa-pinentry-mode (quote loopback))
 '(epg-gpg-program "/usr/bin/gpg2")
 '(flycheck-display-errors-delay 0.3)
 '(flyspell-correct-interface (quote frog-menu-flyspell-correct) t)
 '(fountain-export-font "Courier New" t)
 '(fountain-export-scene-heading-format (quote (bold)) t)
 '(ivy-display-style (quote fancy))
 '(ivy-initial-inputs-alist nil)
 '(ivy-re-builders-alist
   (quote
    ((swiper . ivy--regex-plus)
     (ivy-switch-buffer . ivy--regex-plus)
     (t . ivy--regex-fuzzy))) t)
 '(ivy-use-virtual-buffers t)
 '(keyfreq-file "~/emacs-keyfreq")
 '(minibuffer-prompt-properties
   (quote
    (read-only t cursor-intangible t face minibuffer-prompt)))
 '(nms-settings-file "/home/gautam/.emacs.d/cache/network-security.data" t)
 '(org-agenda-files
   (quote
    ("/home/gautam/org/inbox.org" "/home/gautam/org/todo.org" "/home/gautam/org/notes.org" "/home/gautam/org/gcal.org")))
 '(org-capture-templates
   (quote
    (("a" "Appointment" entry
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
%?"))) t)
 '(org-default-notes-file "~/org/inbox.org")
 '(org-directory "~/org/")
 '(org-download-method (quote attach) t)
 '(org-download-timestamp t t)
 '(org-ellipsis "⬎")
 '(org-gcal-dir "/home/gautam/.emacs.d/cache/" t)
 '(org-ref-completion-library (quote org-ref-ivy-cite))
 '(org-ref-default-citation-link "footcite")
 '(org-refile-targets
   (quote
    (("~/org/gtd.org" :maxlevel . 3)
     ("~/org/someday.org" :level . 1)
     ("~/org/tickler.org" :maxlevel . 2)
     ("~/org/notes.org" :maxlevel . 2))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)"))))
 '(package-selected-packages
   (quote
    (counsel-projectile org-download comment-dwim-2 ace-link nov pdf-view-restore gcmh edit-server atomic-chrome epa-file ace-window desktop-environment pinentry esup elmacro olivetti fountain-mode org-ref org-protocol-capture-html youtube-dl ibuffer frog-menu posframe ivy swiper dash ov key-chord auth-source-pass quelpa-use-package quelpa exwm flyspell-correct htmlize restart-emacs persistent-scratch paradox org visual-fill-column visual-full-column helpful abbrev-mode abbrev aggressive-fill-paragraph org-plus-contrib nlinum-relative uniquify elpy delight aggressive-indent sdcv-mode yasnippet yaml-mode ws-butler which-key web-mode use-package unfill undo-tree sudo-edit solarized-theme smex smart-mode-line rjsx-mode rainbow-mode rainbow-delimiters py-autopep8 projectile pdf-tools ox-hugo org-wc org-mime org-gcal org-cliplink org-bullets notmuch nix-mode neotree multiple-cursors markdown-mode magit lua-mode linum-relative ledger-mode keyfreq hungry-delete god-mode ghc flycheck flx f expand-region dtrt-indent dired-quick-sort diminish diff-hl default-text-scale counsel company browse-kill-ring beacon bbdb auctex async-test ag adaptive-wrap)))
 '(paradox-github-token t)
 '(pdf-misc-print-programm "/usr/bin/gtklp")
 '(safe-local-variable-values
   (quote
    ((after-save-hook . org-hugo-export-wim-to-md)
     (after-save-hook . org-babel-tangle)
     (eval ov-highlight-load)
     (after-save-hook . gm/org-latex-export)
     (org-hugo-auto-export-on-save . t)
     (tex-command . "xelatex")
     (TeX-engine . xetex))))
 '(setq
   (quote
    (password-store "~/.authinfo" "~/.authinfo.gpg" "~/.netrc")) t)
 '(setq-default t t)
 '(smex-history-length 50 t)
 '(smex-save-file "/home/gautam/.emacs.d/cache/smex" t)
 '(uniquify-after-kill-buffer-p t)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(uniquify-strip-common-suffix t)
 '(web-mode-code-indent-offset 2 t)
 '(web-mode-css-indent-offset 2 t)
 '(web-mode-markup-indent-offset 2 t)
 '(yas-snippet-dirs (quote ("~/.emacs.d/snippets")))
 '(yas-triggers-in-field t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-lead-face ((t (:inherit isearch-fail))))
 '(avy-lead-face-0 ((t (:inherit org-todo :background "#002b36"))))
 '(variable-pitch ((t (:family "Source Sans Pro")))))
