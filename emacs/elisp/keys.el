(require 'evil)
(require 'key-chord)

;; Enable Key-Chord
(key-chord-mode 1)

;; Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-mode 1)
