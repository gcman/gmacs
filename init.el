(org-babel-load-file (expand-file-name "~/.emacs.d/gautam.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(ido-create-new-buffer 'always)
 '(ido-enable-flex-matching t)
 '(ido-file-extensions-order '(".org" ".tex" ".py"))
 '(ido-grid-bind-keys t t)
 '(ido-max-directory-size 100000)
 '(ido-use-faces nil)
 '(ido-use-filename-at-point 'guess)
 '(ivy-display-style 'fancy)
 '(ivy-initial-inputs-alist nil t)
 '(ivy-re-builders-alist '((swiper . ivy--regex-plus) (t . ivy--regex-fuzzy)) t)
 '(ivy-use-virtual-buffers t)
 '(package-selected-packages
   '(ivy-explorer yasnippet which-key web-mode use-package swiper solarized-theme smart-mode-line rainbow-mode pdf-tools ox-hugo org-wc org-gcal org-cliplink org-bullets magit keyfreq ido-grid-mode god-mode dired-quick-sort diminish company cdlatex avy auctex amx adaptive-wrap))
 '(pdf-view-midnight-colors '("#657b83" . "#fdf6e3"))
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
 '(avy-lead-face ((t (:weight bold))))
 '(avy-lead-face-0 ((t (:weight bold))))
 '(fringe ((t (:background "#fdf6e3"))))
 '(variable-pitch ((t (:family "Palatino Linotype")))))
