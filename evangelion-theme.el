;;; evangelion-theme.el --- a purple colour scheme inspired by neon genesis evangelion -*- lexical-binding: t; -*-
;;; Version: 0.01

;; Copyright (C) 2024 Andrew Jose, xero harrison

;; SPDX-License-Identifier: GPL-3.0-or-later
;; Author: Andrew Jose <mail@drewsh.com>
;; Maintainer: Andrew Jose <mail@drewsh.com>
;; URL: https://github.com/crmsnbleyd/evangelion-theme
;; Package-Requires: ((emacs "27.1"))
;; Keywords: faces, theme

(deftheme evangelion
  "Purple colour scheme inspired by neon genesis evangelion."
  :kind 'color-scheme
  :background-mode 'dark)

(defvar evangelion-bg       "#201430")
(defvar evangelion-fg       "#E1D6F8")
(defvar evangelion-green    "#87FF5F")
(defvar evangelion-green2   "#9CDA7C")
(defvar evangelion-hl       "#39274D")
(defvar evangelion-fade     "#A1A0AD")
(defvar evangelion-lavender "#AB92FC")
(defvar evangelion-purple   "#B968FC")
(defvar evangelion-orange   "#E6BB85")
(defvar evangelion-orange2  "#D99145")


(custom-theme-set-faces
   'evangelion
     `(default ((t (:background ,evangelion-bg :foreground ,evangelion-fg))))
     ;;; font lock default faces
     `(font-lock-builtin-face ((t (:foreground ,evangelion-green2))))
     `(font-lock-comment-face
       ((t (:foreground ,evangelion-fade :background ,evangelion-hl))))
     `(font-lock-constant-face ((t (:foreground ,evangelion-orange2))))
     `(font-lock-doc-string-face ((t (:foreground ,evangelion-lavender))))
     `(font-lock-function-name-face ((t (:foreground ,evangelion-green2))))
     `(font-lock-keyword-face ((t (:bold t :foreground ,evangelion-green))))
     `(font-lock-preprocessor-face ((t (:foreground ,evangelion-green))))
     `(font-lock-reference-face ((t (:foreground ,evangelion-purple))))
     `(font-lock-string-face ((t (:foreground ,evangelion-lavender))))
     `(font-lock-type-face ((t (:foreground ,evangelion-green2))))
     `(font-lock-variable-name-face ((t (:foreground ,evangelion-purple))))
     `(font-lock-warning-face ((t (:bold t :foreground ,evangelion-orange))))
     ;;; paren
     `(show-paren-match
       ((t (:foreground ,evangelion-purple :background ,evangelion-hl :bold t))))
     ;;; line number
    `(line-number-current-line
       ((t (:inherit line-number :foreground ,evangelion-green)))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'evangelion)
(provide 'evangelion-theme)

;;; evangelion-theme.el ends here
