(advice-add #'display-startup-echo-area-message :override #'ignore)
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message user-login-name
      inhibit-default-init t
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil)

(require 'org)

(let ((file-name-handler-alist nil))
  (if (file-exists-p (expand-file-name "gmacs.elc" user-emacs-directory))
      (load-file (expand-file-name "gmacs.elc" user-emacs-directory))
    (load-file (expand-file-name "gmacs.el" user-emacs-directory))))
