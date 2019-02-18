(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   '("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(fci-rule-color "#eee8d5")
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   '(("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100)))
 '(hl-bg-colors
   '("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342"))
 '(hl-fg-colors
   '("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3"))
 '(hl-paren-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(ivy-display-style 'fancy)
 '(ivy-initial-inputs-alist nil t)
 '(ivy-re-builders-alist
   '((swiper . ivy--regex-plus)
     (ivy-switch-buffer . ivy--regex-plus)
     (t . ivy--regex-fuzzy)) t)
 '(ivy-use-virtual-buffers t)
 '(magit-diff-use-overlays nil)
 '(notmuch-saved-searches
   '((:name "flagged" :query "tag:flagged" :key "f")
     (:name "sent" :query "tag:sent" :key "t" :sort-order newest-first)
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "all mail" :query "*" :key "a" :sort-order newest-first)
     (:name "new" :query "tag:new")))
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4"))
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
      (file+datetree "~/org/journal.org")
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
*** My Algorithm")))
 '(org-default-notes-file "~/org/inbox.org")
 '(org-directory "~/org/")
 '(org-format-latex-header
   "\\documentclass{article}
\\usepackage[usenames]{color}
[PACKAGES]
[DEFAULT-PACKAGES]
\\pagestyle{empty}             % do not remove
\\usepackage{gm-math}
% The settings below are copied from fullpage.sty
\\setlength{\\textwidth}{\\paperwidth}
\\addtolength{\\textwidth}{-3cm}
\\setlength{\\oddsidemargin}{1.5cm}
\\addtolength{\\oddsidemargin}{-2.54cm}
\\setlength{\\evensidemargin}{\\oddsidemargin}
\\setlength{\\textheight}{\\paperheight}
\\addtolength{\\textheight}{-\\headheight}
\\addtolength{\\textheight}{-\\headsep}
\\addtolength{\\textheight}{-\\footskip}
\\addtolength{\\textheight}{-3cm}
\\setlength{\\topmargin}{1.5cm}
\\addtolength{\\topmargin}{-2.54cm}")
 '(org-refile-targets
   '(("~/org/gtd.org" :maxlevel . 3)
     ("~/org/someday.org" :level . 1)
     ("~/org/tickler.org" :maxlevel . 2)
     ("~/org/notes.org" :maxlevel . 2)))
 '(org-todo-keywords
   '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))
 '(package-selected-packages
   '(unfill f counsel-notmuch notmuch alert smex flx htmlize emacs-async linum-relative ace-window browse-kill-ring sudo pdf-tools auctex org-bullets org-gcal ox-hugo org-cliplink org-wc rainbow-mode elpy flycheck counsel swiper ivy use-package))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(preview-auto-cache-preamble t)
 '(preview-default-preamble
   '("\\RequirePackage{gm-math}" "\\RequirePackage["
     ("," . preview-default-option-list)
     "]{preview}[2004/11/05]"))
 '(safe-local-variable-values
   '((after-save-hook . org-hugo-export-wim-to-md)
     (after-save-hook . org-babel-tangle)
     (eval ov-highlight-load)
     (after-save-hook . gm/org-latex-export)
     (org-hugo-auto-export-on-save . t)))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(uniquify-after-kill-buffer-p t)
 '(uniquify-buffer-name-style 'post-forward nil (uniquify))
 '(uniquify-strip-common-suffix t)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#c8805d801780")
     (60 . "#bec073400bc0")
     (80 . "#b58900")
     (100 . "#a5008e550000")
     (120 . "#9d0091000000")
     (140 . "#950093aa0000")
     (160 . "#8d0096550000")
     (180 . "#859900")
     (200 . "#66aa9baa32aa")
     (220 . "#57809d004c00")
     (240 . "#48559e556555")
     (260 . "#392a9faa7eaa")
     (280 . "#2aa198")
     (300 . "#28669833af33")
     (320 . "#279993ccbacc")
     (340 . "#26cc8f66c666")
     (360 . "#268bd2")))
 '(vc-annotate-very-old-color nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2)
 '(weechat-color-list
   '(unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496"))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(variable-pitch ((t (:family "Palatino Linotype")))))
