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
