;; init-lsp.el --- Initialize LSP
;;; Commentary:
;;; Created by Patrik Hartlén

(use-package lsp-mode
  :ensure t
  :defer t
  :diminish lsp-mode
  :config
  (add-hook 'prog-mode-hook #'lsp)
  :commands (lsp lsp-deferred)
  :hook
  (python-ts-mode . lsp-deferred)
  (rust-ts-mode . lsp-deferred)
  (json-ts-mode . lsp-deferred)
  (yaml-ts-mode . lsp-deferred)
  (bash-ts-mode . lsp-deferred)
  :init
  (setq-default indent-tabs-mode nil)
  (setq lsp-enable-snippet nil))

(use-package lsp-ui
  :ensure t
  :after (lsp-mode)
  :commands lsp-ui-mode
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  )
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(provide 'init-lsp)
