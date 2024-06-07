(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)
