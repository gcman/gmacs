;;; early-init.el -*- lexical-binding: t; -*-

;; Here's some cutting edge technology. Emacs 27+ introduces
;; early-init.el, which is run before init.el, before most of its
;; package and UI initialization happens. We use this to cut out
;; unnecessary parts of the initialization process as an early
;; optimization.

;; Package initialize occurs automatically, before `user-init-file' is
;; loaded, but after `early-init-file'. I handle package
;; initialization, so there's no need for Emacs to do it first.

(setq package-enable-at-startup nil)

;; Faster if we disable these here (before initializing them then
;; turning them off)
(setq tool-bar-mode nil
      menu-bar-mode nil
      scroll-bar-mode nil)
(modify-all-frames-parameters '((vertical-scroll-bars)))
