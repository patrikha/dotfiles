;; lang-tust.el --- Rust language mode
;;; Commentary:
;;; Created by Patrik Hartlén

;; rustup component add rls rust-src clippy
;; pacman -S rust-analyser
;; yay -S tree-sitter-rust
(use-package toml-mode
  :ensure t)
(use-package cargo
  :ensure t
  :hook (rust-mode . cargo-minor-mode))
(use-package rust-ts-mode)
(setq lsp-rust-server 'rust-analyzer)

(provide 'lang-rust)
