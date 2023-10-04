;;; $DOOMDIR/package-configs/org.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-directory "~/org/")
(setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$"))
(setq org-agenda-todo-ignore-scheduled 'future)
(setq org-agenda-todo-ignore-deadlines 7)
(setq org-agenda-tags-todo-honor-ignore-options t)
