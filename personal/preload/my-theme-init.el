;;; my-theme-init.el --- early initialization
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

;;; Decent fonts on windows
(when (eq system-type 'windows-nt)
  (set-frame-font "Consolas-10"))

(custom-set-variables
 '(prelude-theme 'noctilux))

(make-variable-buffer-local 'global-hl-line-mode)
(add-hook 'org-mode-hook (lambda () (setq global-hl-line-mode nil)))

(when (daemonp)
  (add-hook 'after-make-frame-functions
            (lambda (frame)
              (with-selected-frame frame (load-theme 'noctilux t)))))

(provide 'my-theme-init)
;;; my-theme-init.el ends here
