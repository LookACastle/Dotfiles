;;; $DOOMDIR/package-configs/vue-mode.el -*- lexical-binding: t; -*-

(add-hook 'vue-mode-hook #'lsp!)

(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))
