;; lang-yaml.el --- Yaml language mode
;;; Commentary:
;;; Created by Patrik Hartlén

;; M-x lsp-install-server RET yamlls RET

(use-package yaml-ts-mode
  :ensure t
  :defer t
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-ts-mode)))

(provide 'lang-yaml)
