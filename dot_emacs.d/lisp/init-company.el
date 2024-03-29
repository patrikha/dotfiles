;; init-company.el --- Initialize code completion
;;; Commentary:
;;; Created by Patrik Hartlén

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

(use-package company-lsp
  :commands company-lsp)

(provide 'init-company)
