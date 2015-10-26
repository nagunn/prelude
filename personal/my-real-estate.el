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

;;; Frame and window navigation
(prelude-require-package 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)

;;; Decent fonts on windows
(when (eq system-type 'windows-nt)
  (set-frame-font "Consolas-10"))

(provide 'my-real-estate)
;;; my-real-estate.el ends here
