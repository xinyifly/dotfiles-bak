(package-install 'realgud)
(setq realgud-safe-mode nil)
(load-library "realgud")

;; Common Lisp
(package-install 'slime)
(setq inferior-lisp-program "sbcl")

;; Ruby
(package-install 'inf-ruby)
(eval-after-load 'inf-ruby
  '(define-key inf-ruby-minor-mode-map (kbd "C-c C-l") 'ruby-send-line))

;; JavaScript
(setq js-indent-level 2)
(package-install 'js-comint)
(add-hook 'js-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-c C-s") 'js-comint-repl)
	    (local-set-key (kbd "C-c C-r") 'js-comint-send-region)))
(package-install 'prettier-js)
(setq prettier-js-command "prettier-standard")

(package-install 'typescript-mode)

;; HTML
(package-install 'web-mode)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-attr-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(add-to-list 'auto-mode-alist '("\\.html\\." . web-mode))

(package-install 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

;; Python
(package-install 'pyvenv)
(package-install 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(package-install 'yapfify)
(add-hook 'python-mode-hook 'yapf-mode)

;; Misc
(package-install 'php-mode)

(provide 'init-lang)
