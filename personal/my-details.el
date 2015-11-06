;;; package --- my-details
;;; Commentary:
;;; Set personal details.

;;; Code:
(setq user-full-name    (getenv "USER"))
(setq user-mail-address (getenv "EMAIL"))

(provide 'my-details)
;;; my-details.el ends here
