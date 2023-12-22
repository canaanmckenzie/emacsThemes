;;;package: --- A dark theme based on peach, light-blue, and gold
;;;author: Canaan McKenzie 2023

(deftheme ponyopop
  "A dark theme using gold, pink, and blue")

(let (
      ;;base-colors
      (background "#070d0d")
      (foreground "#fff8dc")
      (builtin-face "#ff7f7f")
      (text "#fff8dc")
      (numbers "#84fd7a")
      (strings  "#ff7f7f")
      (comments "#a9a9a9")
      (keywords "#df5d50")
      (pragma "#d93829")
      (definitions "#87cee0")
      (lit-comments "#d6cfc7")
      (types "#be263b")
      (operators "#3feabf")

      ;;gold brackets
      (xgold "#a57c01")
      (light-gold "#b79001")
      (golden-yellow "#ffdf01")
      (munsell-yellow "#edcb01")
      (mustard-yellow "#dbb701")
      (chinese-gold "#c9a401")
      (vegas-gold "#c5b358")
      (burnished-gold "#bf9b30")
      (metal-gold "#ffdc73")
      (sunflower "#ffbf00")
)


(custom-theme-set-faces
 'ponyopop
 ;;generics
 `(default ((t (:background ,background :foreground ,foreground :weight light))))
 `(cursor ((t (:background ,types :foreground ,foreground))))
 `(highlight ((t (:background ,keywords :foreground ,text ))))

;;font-locks
 `(font-lock-builtin-face ((t (:background ,background :foreground ,builtin-face))))
 `(font-lock-variable-face ((t (:background ,background :foreground ,operators))))
 `(font-lock-comment-face ((t (:background ,background :foreground ,comments :italic t :weight light))))
 `(font-lock-comment-delimiter-face ((t (:background ,background :foreground ,comments :italic t :weight light))))
 `(font-lock-constant-face ((t (:background ,background :foreground ,numbers))))
 `(font-lock-number-face ((t (:background ,background :foreground ,numbers))))
 `(font-lock-string-face ((t (:foreground ,strings))))

;;
 `(lsp-headerline-breadcrump-path-error-face ((t(:underline (:style 'wave) :foreground ,foreground :background ,background))))
 `(lsp-headerline-breadcrumb-path-face ((t (:background ,background :foreground ,strings))))
`(lsp-headerline-breadcrumb-hint-face ((t (:background ,background))))
`(lsp-headerline-breadercrumb-path-face ((t (:background ,background))))
`(lsp-headerline-breadcrumb-separator-face ((t (:background ,background :foreground ,numbers))))
`(lsp-headerline-breadcrumb-path-info-face ((t (:background ,background :foreground ,strings))))
`(lsp-headerline-breadcrumb-symbols-face ((t (:background ,background :foreground ,strings))))
`(lsp-headerline-breadcrumb-project-prefix-face ((t (:background ,background :foreground ,strings))))
`(lsp-headerline-breadcrumb-symbols-error-face ((t (:foreground ,strings))))
`(lsp-ui-doc-background ((t (:background ,background :foreground ,strings))))
;;`(lsp-ui-doc-header ((t (:background ,background :foreground ,strings))))
`(lsp-ui-doc-border ((t (:foreground ,types))))
`(lsp-details-face ((t (:background ,background :foreground ,comments))))
`(lv-separator ((t (:background ,background))))
`(widget-field ((t (:background ,background))))
`(widget-single-line-field ((t (:background ,background))))
`(company-preview ((t (:background ,background))))
`(company-tooltip ((t (:background ,background))))
`(icon-button ((t (:background ,background))))
`(region ((t (:background ,numbers :foreground ,background :box '(:line-width 2 :color ,background) :alpha 80))))
`(header-line ((t (:background ,background)))) ;;this is the one that gets rid of the lsp-headerline-breadcrumbs spaces

;;
 `(mode-line ((t (:background ,background :foreground ,foreground :box t))))
 `(mode-line-buffer ((t (:background ,background :foreground ,foreground :box t))))
 `(mode-line-inactive ((t (:background ,background :foreground ,foreground :box t))))

;;haskell
 `(haskell-keyword-face ((t (:background ,background :foreground ,keywords))))
 `(haskell-operator-face ((t (:background ,background :foreground ,operators))))
 `(haskell-pragma-face ((t (:background ,background :foreground ,pragma))))
 `(haskell-definition-face ((t (:background ,background :foreground ,definitions))))
 `(haskell-literate-comment-face ((t (:background ,background :foreground ,lit-comments))))
 `(haskell-constructor-face ((t (:background ,background :foreground ,operators))))
 `(haskell-type-face ((t (:background ,background :foreground ,types))))
 `(haskell-literate-comment-face ((t (:background ,background :foreground ,lit-comments))))

;;rainbow-delimiters
 `(rainbow-delimiters-depth-1-face ((t (:background ,background :foreground ,xgold))))
 `(rainbow-delimiters-depth-2-face ((t (:background ,background :foreground ,light-gold))))
 `(rainbow-delimiters-depth-3-face ((t (:background ,background :foreground ,golden-yellow))))
 `(rainbow-delimiters-depth-4-face ((t (:background ,background :foreground ,munsell-yellow))))
 `(rainbow-delimiters-depth-5-face ((t (:background ,background :foreground ,mustard-yellow))))
 `(rainbow-delimiters-depth-6-face ((t (:background ,background :foreground ,vegas-gold))))
 `(rainbow-delimiters-depth-7-face ((t (:background ,background :foreground ,burnished-gold))))
 `(rainbow-delimiters-depth-8-face ((t (:background ,background :foreground ,metal-gold))))
 `(rainbow-delimiters-depth-9-face ((t (:background ,background :foreground ,sunflower))))
 )
)
;;;###autoload
(when load-file-name
  (add-to-list
   'custom-theme-load-path
   (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'ponyopop)
