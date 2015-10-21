;;; package --- early initialization
;;; Commentary:
;;; Set early variables

;;; Code:

;;; Noctilux is a good theme on all platforms.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'noctilux-theme)
  (package-install 'noctilux-theme))

(custom-set-variables
 '(prelude-theme 'noctilux))

(provide 'my-theme-init)
;;; my-preload.el ends here
