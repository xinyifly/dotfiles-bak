(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-prelude)
(require 'init-edit)
(require 'init-helm)
(require 'init-util)
(require 'init-org)
(require 'init-lang)
(require 'init-misc)
(require 'init-postlude)

(when (file-exists-p custom-file)
  (load custom-file))
