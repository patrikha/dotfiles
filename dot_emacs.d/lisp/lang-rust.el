;; lang-rust.el --- Rust language mode
;;; Commentary:
;;; Created by Patrik Hartlén

;; rustup component add rls rust-src clippy
;; pacman -S rust-analyser

(use-package toml-mode
  :ensure t
  :defer t)

(use-package cargo
  :ensure t
  :defer t
  :hook (rust-mode . cargo-minor-mode))

(use-package rust-ts-mode
  :ensure t
  :defer t)

(setq lsp-rust-server 'rust-analyzer)

(provide 'lang-rust)
