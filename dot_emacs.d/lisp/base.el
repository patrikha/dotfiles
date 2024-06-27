;; base.el --- Initialize all packages
;;; Commentary:
;;; Created by Patrik Hartlén

;; ----------------------------------------------------------- [ general modes ]
(require 'init-dirvish)
(require 'init-vertico)
(require 'init-consult)
(require 'init-embark)
(require 'init-golden-ratio)

;; ------------------------------------------------------- [ programming modes ]
(require 'init-corfu)
(require 'init-projectile)
(require 'init-flycheck)
(require 'init-tree-sitter)
(require 'init-lsp)
(require 'init-git-gutter)
(require 'init-magit)

;; ---------------------------------------------------------- [ language modes ]
(require 'lang-python)
(require 'lang-rust)
(require 'lang-go)
(require 'lang-docker)
(require 'lang-json)
(require 'lang-yaml)
(require 'lang-plantuml)

(provide 'base)
