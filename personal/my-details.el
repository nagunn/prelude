;;; package --- my-details
;;; Commentary:
;;; Set personal details.

;;; Code:
(setq user-full-name    (getenv "USER"))
(setq user-mail-address (getenv "EMAIL"))
(setq user-mail-account (getenv "EMAILACCOUNT"))

(provide 'my-details)
;;; my-details.el ends here
