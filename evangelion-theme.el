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
     (bg       "#201430")
     (fg       "#E1D6F8")
     (green    "#87FF5F")
     (green2   "#9CDA7C")
     (hl       "#39274D")
     (fade     "#A1A0AD")
     (lavender "#AB92FC")
     (purple   "#B968FC")
     (orange   "#E6BB85")
     (orange2  "#D99145"))

     
     (custom-theme-set-faces
      'evangelion
      `(default ((,class (:background ,bg :foreground ,fg))))
     ;;; font lock default faces
      `(font-lock-builtin-face ((,class (:foreground ,green2))))
      `(font-lock-comment-face
	((,class (:foreground ,fade :background ,hl))))
      `(font-lock-constant-face ((,class (:foreground ,orange2))))
      `(font-lock-doc-string-face ((,class (:foreground ,lavender))))
      `(font-lock-function-name-face ((,class (:foreground ,green2))))
      `(font-lock-keyword-face ((,class (:bold t :foreground ,green))))
      `(font-lock-preprocessor-face ((,class (:foreground ,green))))
      `(font-lock-reference-face ((,class (:foreground ,purple))))
      `(font-lock-string-face ((,class (:foreground ,lavender))))
      `(font-lock-type-face ((,class (:foreground ,green2))))
      `(font-lock-variable-name-face ((,class (:foreground ,purple))))
      `(font-lock-warning-face ((,class (:bold t :foreground ,orange))))
     ;;; paren
      `(show-paren-match
	((,class (:foreground ,purple :background ,hl :bold t))))
     ;;; line number
      `(line-number-current-line
	((,class (:inherit line-number :foreground ,green))))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'evangelion)
(provide 'evangelion)

;;; evangelion-theme.el ends here
