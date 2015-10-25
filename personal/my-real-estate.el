;;; package --- my-real-estate
;;; Commentary:
;;; Turn off various real-estate hogs

;;; Code:
(declare-function prelude-require-package "prelude-packages.el")

(menu-bar-mode -1)
(scroll-bar-mode -1)

;;; Remember window loyouts
(prelude-require-package 'eyebrowse)
(eyebrowse-mode t)

(provide 'my-real-estate)
;;; my-real-estate.el ends here
