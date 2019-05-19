(advice-add #'display-startup-echo-area-message :override #'ignore)
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message user-login-name
      inhibit-default-init t
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil)

(let ((file-name-handler-alist nil)
      (orgfile (expand-file-name "gmacs.org" user-emacs-directory))
      (elfile (expand-file-name "gmacs.el" user-emacs-directory))
      (elcfile (expand-file-name "gmacs.elc" user-emacs-directory)))
  (if (file-exists-p elcfile)
      (load-file elcfile)
    (if (or (not (file-exists-p elfile))
            (file-newer-than-file-p orgfile elfile))
        (progn
          (require 'org)
          (org-babel-load-file orgfile))
      (load-file elfile))))
