;;; package --- my-blog
;;; Commentary:
;;; Using org-mode publish projects to maintain a blog.
;;;
;;; Prerequisites:
;;;
;;; Two clones of the github repo under a single directory specified
;;; by BLOG_DIR. The first clone should be called 'master' and the
;;; second 'source' and each clone should be on their respective
;;; branches.
;;;
;;; Other than the above, this is based on the tutorial outlined at
;;; http://orgmode.org/worg/org-tutorials/org-publish-html-tutorial.html.

;;; Code:
(require 'ox-publish)

(defun my-blog-footer ()
  "Return the footer for the blog."
  (concat "<footer><p>Copyright (C) " (user-full-name) " " (format-time-string "%Y" (current-time)) ".</p>"
          "<p>Powered by <a href=\"http://orgmode.org\">Org mode</a>.</p></footer>"))


(when (getenv "BLOG_DIR")
  (let* ((blog-dir (file-name-as-directory (getenv "BLOG_DIR")))
         (blog-source (file-name-as-directory (concat blog-dir "source")))
         (blog-master (file-name-as-directory (concat blog-dir "master"))))
    (setq org-publish-project-alist
          `(
            ("org-notes"
             :base-directory ,blog-source
             :base-extension "org"
             :exclude "template.org"
             :publishing-directory ,blog-master
             :recursive t
             :publishing-function org-html-publish-to-html
             :headline-levels 4
             :auto-preamble t)
            ("org-static"
             :base-directory ,blog-source
             :base-extension "css"
             :publishing-directory ,blog-master
             :recursive t
             :publishing-function org-publish-attachment)
            ("org" :components ("org-notes" "org-static")))))

  (setq org-html-htmlize-output-type 'css)
  (setq org-html-postamble-format `(("en" ,(my-blog-footer)))))

(provide 'my-blog)
;;; my-blog.el ends here
