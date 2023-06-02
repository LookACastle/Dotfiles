;;; $DOOMDIR/package-configs.el -*- lexical-binding: t; -*-
(after! org-mode
  (load-file (concat doom-user-dir "/package-configs/orgmode.el")))

(after! projectile
  (load-file (concat doom-user-dir "/package-configs/projectile.el")))

(after! evil-snipe
  (load-file (concat doom-user-dir "/package-configs/evil-snipe.el")))
