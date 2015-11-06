;;; package --- my-org-mode.el
;;; Commentary:
;;; My org-mode set-up

;;; Code:
(require 'org)

;;; The set of locations that are considered for inclusion as agenda
;;; sources and as refile targets.
(defvar my-org-locations '("personal"))

;;; A safe concat that ensures the first argument is properly
;;; terminated as a directory.
(defun concat-dir (dir file)
  "Concatenate DIR and FILE ensuring that DIR is a properly formatted directory."
  (concat (file-name-as-directory dir) file))

;;; Map the specified files into the org-directory.
(defun in-org-directory (files)
  "Return a relative file (as FILES) in the org-directory."
  (mapcar (lambda (f) (concat-dir org-directory f)) files))

;;; Generate the list of todo files (for refiling) based on the
;;; supplied locations.
(defun my-todo-files (locs)
  "Return a set of todo files from a set of locations (as LOCS)."
  (mapcar (lambda (f) (concat-dir f (concat f ".org"))) locs))

(setq org-agenda-files (in-org-directory (my-todo-files my-org-locations)))
(setq org-default-notes-file (concat-dir org-directory "notes.org"))
(setq org-refile-targets (mapcar (lambda (f) `(,f :level . 1)) org-agenda-files))
(setq org-refile-use-outline-path t)
(setq org-outline-path-complete-in-steps t)
(define-key global-map "\C-cc" 'org-capture)

(provide 'my-org-mode)

;;; my-org-mode.el ends here
