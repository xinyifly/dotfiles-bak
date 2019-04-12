(package-install 'editorconfig)
(editorconfig-mode 1)

(package-install 'undo-tree)
(global-undo-tree-mode 1)

(package-install 'avy)
(global-set-key (kbd "C-;") 'avy-goto-char-timer)
(global-set-key (kbd "M-g g") 'avy-goto-line)

(package-install 'yasnippet)
(setq yas-triggers-in-field t)
(yas-global-mode 1)

(show-paren-mode 1)
(package-install 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode 1)

(package-install 'multiple-cursors)
(require 'mc-mark-more)
(global-set-key (kbd "C->") 'mc/mark-next-word-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-word-like-this)
(global-set-key (kbd "C-c C->") 'mc/mark-all-words-like-this)
(global-set-key (kbd "C-M->") 'mc/mark-next-like-this-symbol)
(global-set-key (kbd "C-M-<") 'mc/mark-previous-like-this-symbol)
(global-set-key (kbd "C-c C-M->") 'mc/mark-all-symbols-like-this)

(provide 'init-edit)
