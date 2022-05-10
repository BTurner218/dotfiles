(require 'package)
(require 'use-package)
(require 'kaolin-themes)

;; Set up package.el to work with MELPA
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; General Settings
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq scroll-conservatively 101)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(use-package kaolin-themes
  :config
  (load-theme 'kaolin-dark t)
  (kaolin-treemacs-theme))

(use-package all-the-icons
  :if (display-graphic-p))
