;;; package --- my-details
;;; Commentary:
;;; Set personal details.

;;; Code:
(require 'package)
(require 'magit)

(setq user-mail-address (getenv "EMAIL"))

(provide 'my-details)
;;; my-details.el ends here
