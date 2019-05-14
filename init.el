(advice-add #'display-startup-echo-area-message :override #'ignore)
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message user-login-name
      inhibit-default-init t
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil)

(let ((file-name-handler-alist nil))
  (cond ((file-exists-p (expand-file-name "gmacs.elc" user-emacs-directory))
         (load-file (expand-file-name "gmacs.elc" user-emacs-directory)))
        (t (require 'org)
           (org-babel-load-file (expand-file-name "gmacs.org" user-emacs-directory)))))
