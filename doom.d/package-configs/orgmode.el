;;; $DOOMDIR/package-configs/orgmode.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-directory "~/Org/")
(setq org-agenda-files "~/Org/")
