(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-font 'default "WenQuanYi Zen Hei Mono-12")
(setq split-width-threshold 120)

(setq make-backup-files nil)

(eval-after-load 'term
  '(term-set-escape-char ?\C-x))

(package-install 'color-theme-sanityinc-tomorrow)
(load-theme 'sanityinc-tomorrow-bright t)

(package-install 'which-key)
(which-key-mode 1)

(package-install 'json-mode)
(package-install 'yaml-mode)
(package-install 'nix-mode)
(package-install 'dockerfile-mode)

(package-install 'markdown-mode)
(package-install 'edit-indirect)

(package-install 'restclient)
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))

(package-install 'terraform-mode)
(add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)

(provide 'init-misc)
