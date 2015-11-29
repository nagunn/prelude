;;; my-preloads --- Some bootstrap packages
;;;
;;; Commentary:
;;; Install some bootstrap packages without the assistance of prelude.
;;;

;;; Code:

;;; Bring in personal settings.
(add-to-list 'load-path "~/.my-emacs")
(require 'my-details)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

;;; Noctilux is a good theme on all platforms.
(unless (package-installed-p 'noctilux-theme)
  (package-install 'noctilux-theme))

;;; Install auth-password-store so that prelude customizations can rely on it.
(unless (package-installed-p 'auth-password-store)
  (package-install 'auth-password-store))

;;; Enable auth-password-store
(auth-pass-enable)

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

(provide 'my-preloads)
;;; my-preloads.el ends here
