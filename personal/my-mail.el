;;; package --- mail setup
;;; Commentary:
;;; Use mu4e and mbsync to fetch mail and smtpmail to send it.
;;; Only active on platforms where mu4e is present.

;;; Code:

(require 'package)
(when (package-installed-p 'mu4e)
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
 (require 'magit)
 (setq
  auth-sources         '(macos-keychain-internet macos-keychain-generic)
  smtpmail-smtp-server "mail.messagingengine.com"
  smtpmail-smtp-service 465
  smtpmail-smtp-user   (magit-get "user.smtp")
  smtpmail-stream-type 'ssl
  user-mail-address    (magit-get "user.email")
  send-mail-function   'smtpmail-send-it
  message-kill-buffer-on-exit t)
 
 (require 'mu4e-contrib)
 (setq mu4e-html2text-command 'mu4e-shr2text))


(provide 'my-mail)
;;; my-mail.el ends here
