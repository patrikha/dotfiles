;; lang-python.el --- Python language mode
;;; Commentary:
;;; Created by Patrik Hartlén

;; sudo pacman -S python-language-server
;; pip install python-language-server[all] ptvsd (debugging)
;; yay -S tree-sitter-python

;; (use-package dap-python
;;   :ensure t)

(defun my-python-flycheck-setup ()
  (add-to-list 'flycheck-checkers 'lsp)
  (flycheck-add-next-checker 'lsp 'python-pylint))

(with-eval-after-load 'lsp
  (with-eval-after-load 'flycheck
    (add-hook 'python-ts-mode-hook 'flycheck-mode)
    (add-hook 'python-ts-mode-hook 'my-python-flycheck-setup)))
(setq py-shell-name "ipython"
      py-python-command-args '("-i")
      python-shell-interpreter "ipython")

(provide 'lang-python)
