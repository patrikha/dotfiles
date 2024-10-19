;; lang-typst.el --- Typst language mode
;;; Commentary:
;;; Created by Patrik Hartlén

;; pacman -S typst-lsp

(use-package typst-ts-mode
  :vc (typst-ts-mode :url "https://codeberg.org/meow_king/typst-ts-mode.git")
  :defer t
  :custom
  (typst-ts-watch-options "--open")
  ;;(typst-ts-mode-grammar-location (expand-file-name "tree-sitter/libtree-sitter-typst.so" user-emacs-directory))
  (typst-ts-mode-enable-raw-blocks-highlight t)
  :config
  (keymap-set typst-ts-mode-map "C-c C-c" #'typst-ts-tmenu))

(provide 'lang-typst)
