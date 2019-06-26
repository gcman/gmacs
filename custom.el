(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-color "#b58900")
 '(counsel-grep-base-command "rg -i -M 120 --color auto --line-number %s %s")
 '(custom-safe-themes
   (quote
    ("d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" default)))
 '(edit-server-default-major-mode (quote org-mode))
 '(edit-server-start-hook
   (quote
    #[0 "\300\301!\210\302\303!\207"
        [visual-fill-column-mode 1 auto-fill-mode -1]
        2]))
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
 '(org-download-method (quote attach) t)
 '(org-download-timestamp t t)
 '(org-gcal-dir "/home/gautam/.emacs.d/cache/" t)
 '(package-selected-packages
   (quote
    (minions disk-usage which-key web-mode visual-fill-column use-package unfill transmission systemd sudo-edit solarized-theme smex smart-mode-line shut-up restart-emacs rainbow-mode py-autopep8 pinentry persistent-scratch pdf-view-restore paradox ox-hugo org-wc org-ref org-gcal org-download org-cliplink org-bullets olivetti nov notmuch nlinum-relative magit keyfreq hungry-delete helpful god-mode gcmh fountain-mode flyspell-correct flycheck flx exwm expand-region esup elpy elfeed el-patch edit-server dired-quick-sort dired-du diminish counsel-projectile comment-dwim-2 browse-kill-ring beacon auctex anzu ace-window ace-link)))
 '(paradox-github-token t)
 '(pdf-view-restore-filename "~/.emacs.d/cache/.pdf-view-restore")
 '(safe-local-variable-values
   (quote
    ((eval bind-key "C-c ]"
           (function gm/org-ref-cite-with-page)
           org-mode-map))))
 '(smex-history-length 50)
 '(smex-save-file "/home/gautam/.emacs.d/cache/smex")
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
 '(variable-pitch ((t (:family "Source Sans Pro" :height 115)))))
