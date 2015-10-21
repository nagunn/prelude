;;; package --- my-powerline
;;; Commentary:
;;; Install powerline on platforms its good one-or-more

;;; Code:
(declare-function prelude-require-package "prelude")
(declare-function powerline-center-evil-theme "powerline")

(when (eq system-type 'osx)
  (prelude-require-package 'powerline)
  (require 'powerline)
  (powerline-center-evil-theme))

(provide 'my-powerline)
;;; my-powerline.el ends here
