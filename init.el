;; (package-initialize)

(org-babel-load-file (expand-file-name "~/.emacs.d/gautam.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-list '(("Evince" ("evince --page-index=%(outpage) %o") "")))
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(package-selected-packages
   '(mu4e-conversation ido-grid-mode avy-flycheck avy-menu avy-zap ido-vertical-mode flx-ido smex rainbow-mode yasnippet-snippets yaml-mode writeroom-mode which-key wc-mode use-package sublimity solarized-theme smooth-scrolling smart-mode-line powerline pdf-tools ox-hugo org-wc org-mime org-bullets olivetti nadvice mu4e-alert magit latexdiff ivy imenu-anywhere god-mode flyspell-lazy flycheck dired-quick-sort diminish dashboard company-math centered-window cdlatex auto-package-update auctex-lua auctex-latexmk adaptive-wrap))
 '(preview-default-option-list
   '("displaymath" "floats" "graphics" "textmath" "sections" "footnotes" "showlabels"))
 '(preview-default-preamble
   '("\\RequirePackage["
     ("," . preview-default-option-list)
     "]{preview}[2004/11/05]" "\\renewcommand{\\d}[1]{\\,\\mathrm{d}#1}" "\\usepacakge{amsmath}" "\\usepackage{amssymb}" "\\usepackage{amsfonts}"))
 '(uniquify-after-kill-buffer-p t)
 '(uniquify-buffer-name-style 'post-forward nil (uniquify))
 '(uniquify-strip-common-suffix t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-lead-face ((t (:weight bold))))
 '(avy-lead-face-0 ((t (:weight bold))))
 '(variable-pitch ((t (:family "Palatino Linotype")))))
