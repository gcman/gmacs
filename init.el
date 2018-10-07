;; (package-initialize)

(org-babel-load-file (expand-file-name "~/.emacs.d/gautam.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(rainbow-mode yasnippet-snippets yaml-mode writeroom-mode which-key wc-mode use-package sublimity solarized-theme smooth-scrolling smart-mode-line powerline pdf-tools ox-hugo org-wc org-mime org-bullets olivetti nadvice mu4e-alert magit latexdiff ivy imenu-anywhere god-mode flyspell-lazy flycheck dired-quick-sort diminish dashboard company-math centered-window cdlatex auto-package-update auctex-lua auctex-latexmk adaptive-wrap))
 '(uniquify-after-kill-buffer-p t)
 '(uniquify-buffer-name-style 'post-forward nil (uniquify))
 '(uniquify-strip-common-suffix t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(variable-pitch ((t (:family "Palatino Linotype")))))
