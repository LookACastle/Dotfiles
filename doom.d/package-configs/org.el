;;; $DOOMDIR/package-configs/org.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-agenda-files (directory-files-recursively "~/Org/" "\\.org$"))
(setq org-agenda-todo-ignore-scheduled 'future) ; Ignore tasks scheduled for the future
(setq org-agenda-skip-scheduled-if-done t) ; Don't show scheduled tasks in agenda if done
(setq org-agenda-tags-todo-honor-ignore-options t) ; Make global todo honor ignore options
(setq org-agenda-todo-list-sublevels nil) ; Make subtasks not shown in todo list

; Save buffer upon completing todo
(add-hook 'org-trigger-hook 'save-buffer)
(add-hook 'org-after-todo-state-change-hook 'save-buffer)

(setq org-roam-dailies-capture-templates
      '(("d" "default" entry "* %<%H:%M>: %?"
         :if-new (file+head "%<%Y-%m-%d>.org" "#+title: %<%Y-%m-%d>\n"))))
