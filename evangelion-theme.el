;;; evangelion-theme.el --- A dark colour scheme inspired by Neon Genesis Evangelion -*- lexical-binding: t; -*-
;;; Version: 0.01

;; Copyright (C) 2024 Andrew Jose, xero harrison

;; SPDX-License-Identifier: GPL-3.0-or-later
;; Author: Andrew Jose <mail@drewsh.com>
;; Maintainer: Andrew Jose <mail@drewsh.com>
;; URL: https://github.com/crmsnbleyd/evangelion-theme
;; Package-Requires: ((emacs "27.1"))
;; Keywords: faces, theme
;; This file is not part of GNU Emacs.

;;; Commentary:
;;
;; evangelion is a dark color scheme that pays homage to the anime
;; "Neon Genesis Evangelion".

;;; Code:

(deftheme evangelion
  "Purple colour scheme inspired by neon genesis evangelion."
  :kind 'color-scheme
  :background-mode 'dark)

(let*
    ((class '((class color) (min-colors 256)))
     (evangelion-bg       "#201430")
     (evangelion-fg       "#E1D6F8")
     (evangelion-green    "#87FF5F")
     (evangelion-green2   "#9CDA7C")
     (evangelion-hl       "#39274D")
     (evangelion-fade     "#A1A0AD")
     (evangelion-lavender "#AB92FC")
     (evangelion-purple   "#B968FC")
     (evangelion-orange   "#E6BB85")
     (evangelion-orange2  "#D99145"))

     
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
	((t (:inherit line-number :foreground ,evangelion-green))))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'evangelion)
(provide 'evangelion)

;;; evangelion-theme.el ends here
