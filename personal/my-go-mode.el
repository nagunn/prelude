;;; my-go-mode.el --- Go mode customizations
;;; Commentary:

;;; Code:
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))

(provide 'my-go-mode)
;;; my-go-mode.el ends here
