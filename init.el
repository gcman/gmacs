;; Use a hook so the message doesn't get clobbered by other messages.
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))
(let ((file-name-handler-alist nil))
  (require 'package)
  (let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                      (not (gnutls-available-p))))
         (proto (if no-ssl "http" "https")))
    ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
    (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
    ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
    (when (< emacs-major-version 24)
      ;; For important compatibility libraries like cl-lib
      (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
  (package-initialize)

  (when (not package-archive-contents)
    (package-refresh-contents))

  (when (not (package-installed-p 'use-package))
    (package-install 'use-package))

  (require 'use-package)
  (require 'font-lock)
  (setq custom-file "~/.emacs.d/custom.el")
  (load custom-file)
  (desktop-save-mode 1)
  (setq completion-ignore-case t)
  (setq-default indent-tabs-mode nil)
  (setq-default tab-width 4)
  (setq indent-line-function 'insert-tab)
  (show-paren-mode)
  (setq transient-mark-mode t)

  (blink-cursor-mode 0)
  (when (display-graphic-p)
    (setq-default cursor-type 'box))
  (setq x-stretch-cursor 1)
  (global-font-lock-mode 1)

  (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
  (setq mouse-wheel-progressive-speed t) ;; don't accelerate scrolling
  (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
  (setq scroll-step 1) ;; keyboard scroll one line at a time

  (setq ring-bell-function 'ignore)
  (setq visible-bell t)
  (display-time-mode 1)
  (setq display-time-format "%l:%M%p")
  (tool-bar-mode -1)

  (setq delete-old-versions -1)
  (setq version-control t)
  (setq vc-make-backup-files t)
  (setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

  (delete-selection-mode 1)
  (column-number-mode 1)
  (fset 'yes-or-no-p 'y-or-n-p)

  (use-package saveplace
    :defer nil
    :config
    (save-place-mode))
  (use-package imenu-anywhere
    :bind
    ("M-i" . helm-imenu-anywhere))
  (add-hook 'before-save-hook 'delete-trailing-whitespace)

  (require 'bind-key)
  (use-package which-key
    :defer nil
    :diminish which-key-mode
    :config
    (which-key-mode))

  (require 'org)
  (use-package org
    :bind
    ("C-c l" . org-store-link)
    ("C-c a" . org-agenda)
    ("A-h" . org-mark-element)
    ("C-c c" . org-capture)
    :custom
    (org-startup-indented t))

  (defvar org-electric-pairs '((?$ . ?$) (?= . ?=)) "Electric pairs for org-mode.")
  (defun org-add-electric-pairs ()
    (setq-local electric-pair-pairs (append electric-pair-pairs org-electric-pairs))
    (setq-local electric-pair-text-pairs electric-pair-pairs))
  (add-hook 'org-mode-hook 'org-add-electric-pairs)
  (electric-pair-mode 1)
  (setq org-highlight-latex-and-related '(latex))
  (add-hook 'org-mode-hook 'turn-on-org-cdlatex)
  (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
  (add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex modes

  ;; Configuring ox-hugo
  (use-package ox-hugo
    :ensure t
    :after ox)
  (require 'ox-hugo-auto-export)

  (font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
  (use-package org-bullets
    :after org
    :hook
    (org-mode . (lambda () (org-bullets-mode 1))))

  (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))

  ;; Use M-x without tapping ALT
  (global-set-key "\C-x\C-m" 'execute-extended-command)
  (global-set-key "\C-c\C-m" 'execute-extended-command)
  (global-set-key "\C-w" 'backward-kill-word)
  (global-set-key "\C-x\C-k" 'kill-region)
  (global-set-key "\C-c\C-k" 'kill-region)

  (set-face-attribute 'default nil :font "Hack" )
  (set-frame-font "Hack" nil t)
  (when (>= emacs-major-version 26)
    (pixel-scroll-mode))
  (use-package centered-window :ensure t)
  (centered-window-mode t)

  (use-package olivetti)
  (add-hook 'text-mode-hook #'olivetti-mode)

  (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

  (setq inhibit-splash-screen t)
  (add-to-list 'default-frame-alist '(fullscreen . maximized))
  (setq frame-title-format "")
  (use-package solarized-theme)
  (load-theme 'solarized-light t)
  (use-package smart-mode-line
    :defer 2
    :config
    (sml/setup))
  (use-package diminish
    :defer 1)
  (use-package uniquify
    :defer 1
    :ensure nil
    :custom
    (uniquify-after-kill-buffer-p t)
    (uniquify-buffer-name-style 'post-forward)
    (uniquify-strip-common-suffix t))
  (use-package wc-mode
    :defer 3)
  (use-package company
    :diminish company-mode
    :hook
    (after-init . global-company-mode))

  (use-package flyspell
    :defer 1
    :hook (text-mode . flyspell-mode)
    :diminish
    :bind (:map flyspell-mouse-map
                ([down-mouse-3] . #'flyspell-correct-word)
                ([mouse-3]      . #'undefined)))
  (use-package yaml-mode)

  (add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
  (setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
	))
  (use-package yasnippet)
  (use-package yasnippet-snippets)
  (yas-global-mode 1)
  (use-package aggressive-indent
    :disabled
    :diminish aggressive-indent-mode
    :hook
    (prog-mode . aggressive-indent-mode)
    (python-mode . (lambda () (aggressive-indent-mode -1))))
)
(setq gc-cons-threshold (* 2 1000 1000))
