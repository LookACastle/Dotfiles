;;; $DOOMDIR/package-configs/org.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-agenda-files (directory-files-recursively "~/Org/" "\\.org$" nil (lambda (x) (not (string-match-p "/\\." x)))))
(setq org-agenda-todo-ignore-scheduled 'future) ; Ignore tasks scheduled for the future
(setq org-agenda-skip-scheduled-if-done t) ; Don't show scheduled tasks in agenda if done
(setq org-agenda-tags-todo-honor-ignore-options t) ; Make global todo honor ignore options
(setq org-agenda-todo-list-sublevels nil) ; Make subtasks not shown in todo list

; Save buffer upon completing todo
(add-hook 'org-trigger-hook 'save-buffer)
(add-hook 'org-after-todo-state-change-hook 'save-buffer)

; Better daily templates
(setq org-roam-dailies-capture-templates
      '(("d" "default" entry "* %<%H:%M>: %?"
         :if-new (file+head "%<%Y-%m-%d>.org" "#+title: %<%Y-%m-%d>\n"))))

; Allow pasting of images into org
(after! org-download
      (setq org-download-method 'directory)
      (setq org-download-image-dir "pictures")
      (setq org-download-image-org-width 600)
      (setq org-download-link-format "[[file:%s]]\n"
        org-download-abbreviate-filename-function #'file-relative-name)
      (setq org-download-link-format-function #'org-download-link-format-function-default))
