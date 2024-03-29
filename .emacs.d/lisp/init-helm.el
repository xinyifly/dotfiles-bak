(package-install 'helm)
(require 'helm-config)
(setq helm-always-two-windows t)
(setq helm-show-completion-display-function 'helm-show-completion-default-display-function)
(helm-mode 1)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-s o") 'helm-occur)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(bind-key* "C-c C-j" 'helm-semantic-or-imenu)
(global-set-key (kbd "C-c C-M-j") 'helm-imenu-in-all-buffers)
(add-hook 'eshell-mode-hook
	  '(lambda () (define-key eshell-mode-map (kbd "C-c C-l") 'helm-eshell-history)))

(package-install 'helm-projectile)
(helm-projectile-on)
(package-install 'helm-ag)
(package-install 'helm-rg)
(package-install 'helm-dash)
(package-install 'helm-systemd)
(setq helm-systemd-list-not-loaded t)

(provide 'init-helm)
