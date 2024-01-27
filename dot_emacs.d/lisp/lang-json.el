;; lang-json.el --- Json language mode
;;; Commentary:
;;; Created by Patrik Hartlén

;; M-x lsp-install-server RET json-ls RET
;; yay -S tree-sitter-json

(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(provide 'lang-json)
