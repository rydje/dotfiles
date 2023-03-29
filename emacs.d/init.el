(require 'package)

(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package smartparens
  :ensure t)

(use-package aggressive-indent
  :ensure t
  :hook (clojure-mode . aggressive-indent-mode))

(use-package rainbow-delimiters
  :ensure t
  :hook ((prog-mode) . rainbow-delimiters-mode))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1")))))

(use-package idle-highlight-mode
  :ensure t
  :hook ((clojure-mode) . idle-highlight-mode))

(use-package clojure-mode
  :ensure t
  :mode (("\\.clj\\'" . clojure-mode)
	 ("\\.edn\\'" . clojure-mode)))

(use-package projectile
  :ensure t)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)

;;;; Editing ;;;;

;; remove whitespaces on save
(add-hook 'before-sabe-hook 'whitespace-cleanup)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;;; I prefer option key for meta
(setq mac-option-key-is-meta t
      mac-command-key-is-meta nil
      mac-command-modifier nil
      mac-option-modifier 'meta)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(aggressive-indent use-package smartparens rainbow-delimiters idle-highlight-mode clojure-mode)))
