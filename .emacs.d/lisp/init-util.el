(package-install 'projectile)
(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(package-install 'magit)
(setq magit-display-buffer-function 'magit-display-buffer-fullframe-status-v1)
(setq magit-diff-refine-hunk t)
(global-set-key (kbd "C-x g") 'magit-status)

(package-install 'direnv)
(direnv-mode 1)

(package-install 'pass)
(package-install 'helm-pass)

(provide 'init-util)
