;;; package --- my-org-page
;;; Commentary:
;;; Initialize org-page for blogging from org-mode
;;; Code:
(declare-function prelude-require-packages "prelude-packages.el")

(prelude-require-packages '(mustache dash ht simple-httpd org-page))

(require 'org-page)
(require 'magit)

(setq op/repository-directory (magit-get "user.blogdir")
      op/site-domain (magit-get "user.blogurl")
      op/site-main-title "ausimian"
      op/site-sub-title "..."
      op/personal-github-link "https://github.com/nagunn"
      op/theme-root-directory (concat (file-name-as-directory (expand-file-name user-emacs-directory))
                                      "org-page-themes")
      op/theme 'ghp)

(provide 'my-org-page)
;;; my-org-page.el ends here
