(setq org-startup-indented t)
(setq org-todo-keywords '((sequence "TODO(t)" "NEXT" "|" "DONE" "CANCELED")))
(setq org-log-done 'time)
(setq org-agenda-files '("~/Dropbox/Orgzly"))
(global-set-key (kbd "C-c a") 'org-agenda)

(package-install 'org-pomodoro)
(setq org-pomodoro-keep-killed-pomodoro-time t)
(eval-after-load 'org
  '(define-key org-mode-map (kbd "C-c C-x <C-return>") 'org-pomodoro))

(provide 'init-org)
