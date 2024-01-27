;; init-projectile.el --- Initialize project code/file navigation
;;; Commentary:
;;; Created by Patrik Hartlén

(use-package projectile
  :ensure t
  :config
  (setq projectile-completion-system 'ivy))

(provide 'init-projectile)
