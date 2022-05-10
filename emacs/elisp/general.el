(require 'package)
(require 'use-package)
(require 'no-littering)
(require 'kaolin-themes)

;; Set up package.el to work with MELPA
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; General Settings
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq scroll-conservatively 101)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Language
;; Typescript
(setq typescript-indent-level 2)

;; Backup settings
 (setq auto-save-file-name-transforms
	`((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

;; lsp log settings
(setenv "TSSERVER_LOG_FILE" "~/.emacs.d/tmp/tsserver.log")

;; Tree Sitter
(global-tree-sitter-mode)
(use-package tree-sitter
  :ensure t)

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter
  :config
  (tree-sitter-require 'tsx)
  (add-to-list 'tree-sitter-major-mode-language-alist '(typescript-tsx-mode . tsx)))
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)


;; Theme
(use-package kaolin-themes
  :config
  (load-theme 'kaolin-galaxy t)
  (kaolin-treemacs-theme))

(use-package all-the-icons
  :if (display-graphic-p))
