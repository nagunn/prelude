;;; package --- my-details
;;; Commentary:
;;; Set personal details.

;;; Code:
(require 'package)
(require 'magit)

(when (and (executable-find "git") (package-installed-p 'magit))
  (setq user-mail-address (magit-get "user.email"))
  (setq user-full-name (magit-get "user.name")))

(provide 'my-details)
;;; my-details.el ends here
