;; init.el --- dot emacs file
;;; Commentary:
;;; Created by Patrik Hartlén

;;; Code:

;; ---------------------------------------------------------------- [ packages ]
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; ---------------------------------------------------------- [ style settings ]
(unless (display-graphic-p)
  (menu-bar-mode -1))

(use-package use-package-chords
  :ensure t
  :config (key-chord-mode 1))

(use-package color-theme-sanityinc-tomorrow
  :ensure t
  :config
  (load-theme 'sanityinc-tomorrow-blue t))

(use-package nerd-icons
  :ensure t)

;; nerd-icons-install-fonts
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

;; -------------------------------------------------------------- [ navigation ]
(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(control shift up)]  'move-line-up)
(global-set-key [(control shift down)]  'move-line-down)
(global-set-key [(control x) (control b)] 'ibuffer)

(use-package browse-kill-ring
  :ensure t
  :bind ("M-y" . browse-kill-ring))

(use-package ace-jump-mode
  :chords (("jj" . ace-jump-char-mode)
           ("jk" . ace-jump-word-mode)
           ("jl" . ace-jump-line-mode)))

;; ----------------------------------------------------------------- [ visuals ]
(use-package smartparens
  :ensure t
  :init (add-hook 'prog-mode-hook 'smartparens-mode)
  :bind
  ("M-<right>" . sp-forward-sexp)
  ("M-<left>" . sp-backward-sexp))

(use-package rainbow-delimiters
  :ensure t
  :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))


;; (use-package highlight-indent-guides
;;   :ensure t
;;   :init (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
;;   :config
;;   (setq highlight-indent-guides-method 'character
;;         highlight-indent-guides-auto-top-odd-face-perc 30
;;         highlight-indent-guides-auto-top-even-face-perc 30
;;         highlight-indent-guides-auto-top-character-face-perc 90
;;         highlight-indent-guides-responsive "top"))

;; ------------------------------------------------------------ [ mode mapping ]
(setq major-mode-remap-alist
 '((yaml-mode . yaml-ts-mode)
   (js2-mode . js-ts-mode)
   (typescript-mode . typescript-ts-mode)
   (json-mode . json-ts-mode)
   (css-mode . css-ts-mode)
   (python-mode . python-ts-mode)
   (rust-mode . rust-ts-mode)
   (bash-mode . bash-ts-mode)))

(add-to-list 'auto-mode-alist '("\\.msbuild\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.csproj\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.vcproj\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.vcxproj\\'" . xml-mode))

;; -------------------------------------------------------- [ initialize modes ]
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'base)

;; ----------------------------------------------------------- [ custom values ]
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(sanityinc-tomorrow-blue))
 '(custom-safe-themes
   '("76ddb2e196c6ba8f380c23d169cf2c8f561fd2013ad54b987c516d3cabc00216" default))
 '(package-selected-packages
   '(find-file-in-repository find-file-in-project golden-ratio smartparens rainbow-delimiters nerd-icons highlight-indent-guides dirvish color-theme-sanityinc-tomorrow color-theme ace-jump-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
