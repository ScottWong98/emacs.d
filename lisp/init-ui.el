
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(global-linum-mode t)
(global-hl-line-mode t)

(setq inhibit-splash-screen t)

;; Mode Line
(display-time-mode 1)
(display-battery-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)

;; Font
(set-face-attribute 'default nil :height 140)

(provide 'init-ui)
