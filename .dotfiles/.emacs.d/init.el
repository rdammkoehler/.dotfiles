(global-auto-revert-mode 1)
(global-linum-mode 1)
(set-cursor-color "red")
(set-mouse-color "goldenrod")
(set-face-background 'region "blue")
(set-face-foreground 'mode-line "black")
(set-face-background 'mode-line "green")
(set-foreground-color "white")
(set-background-color "black")
;(c-set-style "k&r")

(ido-mode 1)

(require 'package)
(add-to-list 'package-archives 
'("marmalade" . "http://marmalade-repo.org/packages/"))
;; melpa-stable
(add-to-list 'package-archives
'("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(package-initialize)

(global-set-key (kbd "M-SPC") 'ace-jump-mode)
(global-set-key (kbd "ESC M-SPC") 'just-one-space)


(require 'undo-tree)
(global-undo-tree-mode 1)

