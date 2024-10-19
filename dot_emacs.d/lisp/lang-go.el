;; lang-go.el --- Rust language mode
;;; Commentary:
;;; Created by Patrik Hartlén

;; pacman -S gopls
;; yay -S tree-sitter-go tree-sitter-gomod-git

(use-package go-ts-mode
  :ensure t
  :defer t)

(provide 'lang-go)
