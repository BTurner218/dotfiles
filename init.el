;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Enable Key-Chord
(require 'key-chord)
(key-chord-mode 1)

;; Evil Settings
;; Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-mode 1)

;; General Settings
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq scroll-conservatively 101)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ivy kaolin-themes evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'use-package)
(require 'kaolin-themes)
(load-theme 'kaolin-dark t)
;; Apply treemacs customization for Kaolin themes, requires the all-the-icons package.
(kaolin-treemacs-theme)

;; Or if you have use-package installed
(use-package kaolin-themes
  :config
  (load-theme 'kaolin-dark t)
  (kaolin-treemacs-theme))

;; Ivy Config
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
