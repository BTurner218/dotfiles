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

;; lsp Mode
(use-package lsp-mode
  :init
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (typescript-mode . lsp-defered)
        )
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
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
