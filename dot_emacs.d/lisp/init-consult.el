(use-package consult
  :ensure t
  :bind (;; A recursive grep
         ("M-s M-g" . consult-git-grep)
         ("M-s M-r" . consult-ripgrep)
         ;; Search for files names recursively
         ("M-s M-f" . consult-find)
         ;; Search through the outline (headings) of the file
         ("M-s M-o" . consult-outline)
         ;; Search the current buffer
         ("M-s M-l" . consult-line)
         ;; Switch to another buffer, or bookmarked file, or recently
         ;; opened file.
         ("M-s M-b" . consult-buffer)
         ;; Replace default goto line
         ("M-g M-g" . consult-goto-line)))

(use-package embark-consult
  :ensure t
  :hook
  (embark-collect-mode . consult-preview-at-point-mode))

(provide 'init-consult)
