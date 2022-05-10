(require 'evil)
(use-package undo-fu)
(require 'prettier-js)

;; Evil Mode
;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(evil-mode 1)
(setq evil-undo-system 'undo-fu)

;; Ivy Mode
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; Projectile
(projectile-mode +1)

(use-package web-mode  :ensure t
  :mode (("\\.js\\'" . web-mode)
         ("\\.jsx\\'" . web-mode)
         ("\\.html\\'" . web-mode)
         ("\\.vue\\'" . web-mode)
	 ("\\.json\\'" . web-mode))
  :commands web-mode
  :config
  (setq web-mode-content-types-alist
	'(("jsx" . "\\.js[x]?\\'")))
  )

(require 'lsp-mode)
(add-hook 'web-mode-hook #'lsp)
(add-hook 'csharp-mode-hook #'lsp)
(lsp-treemacs-sync-mode 1)

;; Company
(add-hook 'after-init-hook 'global-company-mode)

;; TypeScript Web
;;(define-derived-mode typescript-tsx-mode web-mode "TypeScript/TSX")
;;(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-tsx-mode))
;;(add-to-list 'tree-sitter-major-mode-language-alist '(typescript-tsx-mode . tsx))

(define-derived-mode typescript-tsx-mode typescript-mode "TSX"
  "Major mode for editing TSX files.

Refer to Typescript documentation for syntactic differences between normal and TSX
variants of Typescript.")
(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-tsx-mode))

;; prettier-js
(add-hook 'typescript-mode-hook 'prettier-js-mode)
