;;; package --- early initialization
;;; Commentary:
;;; Set early variables

;;; Code:

;;; Noctilux is a good theme on all platforms.
(require 'package)
(package-initialize)
(unless (package-installed-p 'noctilux-theme)
  (package-install 'noctilux-theme))
(custom-set-variables
 '(prelude-theme 'noctilux))

(provide 'my-preload)
;;; my-preload.el ends here
