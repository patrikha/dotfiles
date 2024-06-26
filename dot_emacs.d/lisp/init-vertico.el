(use-package vertico
  :ensure t
  :bind (:map vertico-map
         ("C-j" . vertico-next)
         ("C-k" . vertico-previous)
         ("C-f" . vertico-exit)
         :map minibuffer-local-map
         ("M-h" . backward-kill-word))
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode))

(use-package savehist
  :init
  (savehist-mode))

(use-package marginalia
  :after vertico
  :ensure t
  :custom
  (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
  :init
  (marginalia-mode))

(use-package orderless
  :after vertico
  :ensure t
  :config
  (setq completion-styles '(orderless basic))
  (setq orderless-matching-styles '(orderless-flex
                                    orderless-literal
                                    orderless-regexp
                                    orderless-initialism
                                    orderless-prefixes)))
(provide 'init-vertico)
