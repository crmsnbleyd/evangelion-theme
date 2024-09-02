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
     (teal     "#397B6E")
     ;; (black    "#222222")
     (hl       "#39274D")
     (fade     "#A1A0AD")
     (lavender "#AB92FC")
     (purple   "#B968FC")
     (red      "#5B2B41")
     (orange   "#E6BB85")
     (orange2  "#D99145"))

    (custom-theme-set-faces
      'evangelion
      `(default
	((,class (:background ,bg :foreground ,fg))))
      `(highlight ((,class (:background ,hl))))
      `(link ((,class (:foreground ,green2 :underline t))))
      `(region ((,class (:background ,teal))))
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
     ;;; isearch
      `(isearch ((,class (:background ,purple))))
     ;;; line number
      `(line-number-current-line
	((,class (:inherit line-number :foreground ,green))))
     ;;; magit
      `(magit-branch-local
       ((t (:foreground ,orange))))
     `(magit-branch-remote
       ((t (:foreground ,lavender))))
     `(git-commit-summary
       ((t (:foreground ,green))))
     `(git-commit-overlong-summary
       ((t (:foreground ,red :weight semi-bold))))
     `(magit-dimmed
       ((t (:foreground ,fade))))
     `(magit-blame-dimmed
       ((t (:foreground ,fade))))
     `(magit-header-line
       ((t (:foreground ,fg
	    :background ,hl))))
     `(magit-header-line-log-select
       ((t (:foreground ,fg
	    :background ,hl))))
     `(magit-section-heading
       ((t (:foreground ,fade :height 1.2))))
     `(magit-section-highlight
       ((t (:background ,hl :extend t))))
     ;;; paren
      `(show-paren-match
	((,class (:foreground ,purple :background ,hl :bold t))))
     ;;; rainbow delimiters
      `(rainbow-delimiters-depth-1-face
       ((t (:foreground ,lavender))))
     `(rainbow-delimiters-depth-2-face
       ((t (:foreground ,orange))))
     `(rainbow-delimiters-depth-3-face
       ((t (:foreground ,purple))))
     `(rainbow-delimiters-depth-4-face
       ((t (:foreground ,orange2))))
     `(rainbow-delimiters-depth-5-face
       ((t (:foreground ,teal))))
     `(rainbow-delimiters-depth-6-face
       ((t (:foreground ,green))))
     `(rainbow-delimiters-depth-7-face
       ((t (:inherit rainbow-delimiters-depth-1-face))))
     `(rainbow-delimiters-depth-8-face
       ((t (:inherit rainbow-delimiters-depth-2-face))))
     `(rainbow-delimiters-depth-9-face
       ((t (:inherit rainbow-delimiters-depth-3-face))))
     `(rainbow-delimiters-depth-10-face
       ((t (:inherit rainbow-delimiters-depth-4-face))))
     `(rainbow-delimiters-depth-11-face
       ((t (:inherit rainbow-delimiters-depth-5-face))))
     `(rainbow-delimiters-depth-12-face
       ((t (:inherit rainbow-delimiters-depth-6-face))))
     `(rainbow-delimiters-unmatched-face
       ((t (:background ,red
	    :weight bold))))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'evangelion)
(provide 'evangelion)

;;; evangelion-theme.el ends here
