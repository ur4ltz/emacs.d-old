(el-get 'sync '(magit
		magit-filenotify
		))

(require 'magit)

(global-set-key (kbd "C-x g") 'magit-status)

