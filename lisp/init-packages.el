

(require 'package)
(package-initialize)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))


(defvar my/packages '(
			 company
			 monokai-theme
			 solarized-theme
			 nord-theme
			 dracula-theme
			 hungry-delete
			 swiper
			 counsel
			 smartparens
			 js2-mode
			 nodejs-repl
			 popwin
			 ) "Default packages")

(require 'cl)
(setq package-selected-packages my/packages)


(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))
(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Theme
;;(load-theme 'monokai t)
;;(load-theme 'solarized-dark t)
;;(load-theme 'nord t)
(load-theme 'dracula t)

;; Company
(global-company-mode 1)

;; Hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; Swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
(setq search-default-mode #'char-fold-to-regexp)

;; Smartparens
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)



;; js2-mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;; Nodejs
(require 'nodejs-repl)
(defun nvm-which ()
  (let ((output (shell-command-to-string "source ~/.nvm/nvm.sh; nvm which")))
    (cadr (split-string output "[\n]+" t))))

(setq nodejs-repl-command #'nvm-which)

;; Popwin
(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
