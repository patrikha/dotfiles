;; init-corfu.el --- Initialize corfu, completion in region function
;;; Commentary:
;;; Created by Patrik Hartlén

(use-package corfu
  :ensure t
  ;; TAB-and-Go customizations
  :custom
  (corfu-cycle t)           ;; Enable cycling for `corfu-next/previous'
  (corfu-preselect 'prompt) ;; Always preselect the prompt
  (tab-always-indent 'complete)
  (completion-cycle-threshold nil) ;; Always show candidates in menu
  (corfu-auto t)
  (corfu-auto-prefix 2)
  (corfu-auto-delay 0.25)
  ;; Use TAB for cycling, default is `corfu-complete'.
  :bind
  (:map corfu-map
        ("TAB" . corfu-next)
        ([tab] . corfu-next)
        ("S-TAB" . corfu-previous)
        ([backtab] . corfu-previous))
  :hook (corfu-mode . corfu-popupinfo-mode)
  :init
  (global-corfu-mode))

(use-package nerd-icons-corfu
  :ensure t
  :after corfu
  :init
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

;; add support for terminal
(use-package corfu-terminal
  :ensure t)
(unless (window-system)
  (corfu-terminal-mode +1))

;; Optionally:
(setq nerd-icons-corfu-mapping
      '((array :style "cod" :icon "symbol_array" :face font-lock-type-face)
        (boolean :style "cod" :icon "symbol_boolean" :face font-lock-builtin-face)
        ;; ...
        (t :style "cod" :icon "code" :face font-lock-warning-face)))
        ;; Remember to add an entry for `t', the library uses that as default.

;; The Custom interface is also supported for tuning the variable above.

(provide 'init-corfu)
