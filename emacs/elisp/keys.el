(require 'evil)
(require 'key-chord)

;; Enable Key-Chord
(key-chord-mode 1)

;; Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-mode 1)

;; Keybindings
(evil-set-leader 'normal (kbd "SPC"))
(evil-define-key 'normal 'global (kbd "<leader>m") 'treemacs)
