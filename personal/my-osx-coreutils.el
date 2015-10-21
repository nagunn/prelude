;;; package --- my-osx-coreutils
;;; Commentary:
;;; Use coreutils functions on osx

;;; Code:
(when (eq system-type 'darwin)
  (when (executable-find "gls")
    (setq insert-directory-program (executable-find "gls"))))

(provide 'my-osx-coreutils)
;;; my-osx-coreutils.el ends here
