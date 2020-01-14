
(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

(setq make-backup-files nil)

(setq auto-save-default nil)

(recentf-mode 1)
(setq recentf-max-items 15)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)

(provide 'init-better-defaults)
