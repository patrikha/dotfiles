;; early-init.el --- dot emacs file
;;; Commentary:
;;; Created by Patrik Hartlén

;;; Code:

;; -------------------------------------------------------- [ initial settings ]
(windmove-default-keybindings 'shift)
(show-paren-mode t)
(tool-bar-mode -1)
(column-number-mode t)
(global-display-line-numbers-mode t)
(define-key global-map [remap list-buffers] 'buffer-menu-other-window)
(setq ring-bell-function 'ignore
      inhibit-splash-screen t
      inhibit-startup-screen t
      inhibit-startup-buffer-menu t
      initial-scratch-message nil
      visible-bell nil
      ;;mac-right-option-modifier nil
      backup-inhibited t
      auto-save-default nil
      tab-width 4
      uniquify-buffer-name-style 'post-forward
      uniquify-min-dir-content 3)

(setq-default truncate-lines t)
(defalias 'yes-or-no-p 'y-or-n-p)

(set-face-attribute 'default nil
                    :family "Hack Nerd Font"
                    :height 120
                    :weight 'regular
                    :width 'normal)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Initialise installed packages at this early stage
(setq package-enable-at-startup t)
