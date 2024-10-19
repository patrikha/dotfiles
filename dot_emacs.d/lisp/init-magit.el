;; init-magit.el --- Initialize magic git
;;; Commentary:
;;; Created by Patrik Hartlén

(use-package magit
  :ensure t
  :defer t
  :config
  (setq magit-completing-read-function 'ivy-completing-read))

(provide 'init-magit)
