;; lang-plantuml.el --- PlantUML language mode
;;; Commentary:
;;; Created by Patrik Hartlén

;; M-x plantuml-download-jar<RET>
;; sudo pacman -S graphviz

(use-package plantuml-mode
  :ensure t
  :init
  (setq plantuml-default-exec-mode 'jar)
  (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode)))

(use-package flycheck-plantuml
  :ensure t
  :after (flycheck)
  :config
  (flycheck-plantuml-setup))

(provide 'lang-plantuml)
