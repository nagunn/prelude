;;; package --- mail setup
;;; Commentary:
;;; Use mu4e and mbsync to fetch mail and smtpmail to send it.
;;; Only active on platforms where mu4e is present.

;;; Code:

(defun mu4e-installed-p ()
  (locate-file "mu4e.el" load-path))

(when (mu4e-installed-p)
 (require 'my-details)
 (require 'mu4e)
 (setq
  mu4e-maildir            "~/.mail"   ;; top-level maildir
  mu4e-sent-folder        "/fastmail/sent"
  mu4e-drafts-folder      "/fastmail/drafts"
  mu4e-trash-folder       "/fastmail/trash"
  mu4e-refile-folder      "/fastmail/archive"
  mu4e-get-mail-command   "mbsync -aq"
  mu4e-update-interval    300)

 (setq mail-user-agent 'mu4e-user-agent)

 (require 'smtpmail)
 (setq
  smtpmail-smtp-server  "mail.messagingengine.com"
  smtpmail-smtp-service 465
  smtpmail-smtp-user    user-mail-account
  smtpmail-stream-type  'ssl
  user-mail-address     user-mail-address
  send-mail-function    'smtpmail-send-it
  message-kill-buffer-on-exit t)

 (require 'mu4e-contrib)
 (setq mu4e-html2text-command 'mu4e-shr2text))

(provide 'my-mail)
;;; my-mail.el ends here
