;;; my-details --- Set personal details
;;; Commentary:
;;; Assume environment variables have been appropriately set up.

;;; Code:
(setq user-full-name    (getenv "USER"))
(setq user-mail-address (getenv "EMAIL"))
(setq user-mail-account (getenv "EMAILACCOUNT"))

(provide 'my-details)
;;; my-details.el ends here
