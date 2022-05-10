(require 'evil)

;; Evil Mode
;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(evil-mode 1)

;; Ivy Mode
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; Projectile
(projectile-mode +1)

(use-package web-mode  :ensure t
  :mode (("\\.js\\'" . web-mode)
         ("\\.jsx\\'" . web-mode)
         ("\\.ts\\'" . web-mode)
         ("\\.tsx\\'" . web-mode)
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
(lsp-treemacs-sync-mode 1)

;; Company
(add-hook 'after-init-hook 'global-company-mode)
