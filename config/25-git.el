
(el-get 'sync '(magit
		magit-filenotify
		))

(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/package.d/magit/Documentation/"))

(global-set-key (kbd "C-x g") 'magit-status)

