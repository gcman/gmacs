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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/Documents/School/emacs/first-test.org"))
 '(package-selected-packages
   '(yasnippet-classic-snippets yasnippet-snippets yasnippet powerline sublimity use-package org-bullets centered-window flyspell-lazy flycheck magic-latex-buffer latex-math-preview cdlatex autopair auctex-latexmk ox-hugo solarized-theme))
 '(safe-local-variable-values
   '((eval add-hook 'after-save-hook #'org-hugo-export-wim-to-md-after-save :append :local)))
 '(sublimity-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#fdf6e3")))))

;; Solarized Light theme
(load-theme 'solarized-light t)

;; -*- mode: elisp -*-
;; Disable the splash screen (to enable it again, replace the t with O)
(setq inhibit-splash-screen t)

;; Enable transient mode
(transient-mark-mode 1)

;;;; Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(define-key global-map "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

;; Configuring ox-hugo
(with-eval-after-load 'ox
    (require 'ox-hugo))

;; ox-hugo auto-reload for org-capture
(with-eval-after-load 'org-capture
  ;; Do not cause auto Org->Hugo export to happen when saving captures
  (defun modi/org-capture--remove-auto-org-to-hugo-export-maybe ()
    "Function for `org-capture-before-finalize-hook'.
Disable `org-hugo-export-wim-to-md-after-save'."
    (setq org-hugo-allow-export-after-save nil))

  (defun modi/org-capture--add-auto-org-to-hugo-export-maybe ()
    "Function for `org-capture-after-finalize-hook'.
Enable `org-hugo-export-wim-to-md-after-save'."
    (setq org-hugo-allow-export-after-save t))

  (add-hook 'org-capture-before-finalize-hook #'modi/org-capture--remove-auto-org-to-hugo-export-maybe)
  (add-hook 'org-capture-after-finalize-hook #'modi/org-capture--add-auto-org-to-hugo-export-maybe))

;; Populates only the EXPORT_FILE_NAME property in the inserted headline.
(with-eval-after-load 'org-capture
(defun org-hugo-new-subtree-post-capture-template ()
  "Returns `org-capture' template string for new Hugo post.
See `org-capture-templates' for more information."
  (let* (;; http://www.holgerschurig.de/en/emacs-blog-from-org-to-hugo/
         (date (format-time-string (org-time-stamp-format :long :inactive) (org-current-time)))
         (title (read-from-minibuffer "Post Title: ")) ;Prompt to enter the post title
         (fname (org-hugo-slug title)))
    (mapconcat #'identity
               `(
                 ,(concat "* TODO " title)
                 ":PROPERTIES:"
                 ,(concat ":EXPORT_FILE_NAME: " fname)
                 ,(concat ":EXPORT_DATE: " date) ;Enter current date and time
                 ":END:"
                 "%?\n")                ;Place the cursor here finally
               "\n"))) 

  (add-to-list 'org-capture-templates
               '("h"                ;`org-capture' binding + h
                 "Hugo post"
                 entry
                 ;; It is assumed that below file is present in `org-directory'
                 ;; and that it has a "Blog Ideas" heading. It can even be a
                 ;; symlink pointing to the actual location of all-posts.org!
                 (file+olp "all-posts.org" "Blog Ideas")
                 (function org-hugo-new-subtree-post-capture-template))))

(setq tab-width 4) ; or any other preferred value

(setq org-highlight-latex-and-related '(latex))

;; Autocomplete paired brackets
(electric-pair-mode 1)

(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode

(require 'flyspell-lazy)
(flyspell-lazy-mode 1)
(flyspell-mode 1)      ; or (flyspell-prog-mode)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'sublimity)
(require 'sublimity-attractive)
(setq sublimity-attractive-centering-width 110)
(sublimity-mode 1)

(require 'powerline)
(powerline-default-theme)

(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
	))
(require 'yasnippet)
(yas-global-mode 1)
