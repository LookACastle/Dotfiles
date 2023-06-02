;;; $DOOMDIR/package-configs.el -*- lexical-binding: t; -*-

; This needs to be automated at some point, it works for now though

(after! org-mode
  (load-file (concat doom-user-dir "/package-configs/orgmode.el")))

(after! projectile
  (load-file (concat doom-user-dir "/package-configs/projectile.el")))

(after! evil-snipe
  (load-file (concat doom-user-dir "/package-configs/evil-snipe.el")))

(after! treemacs
  (load-file (concat doom-user-dir "/package-configs/treemacs.el")))
