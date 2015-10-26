(el-get 'sync '(lua-mode
                lua-block
;;                flymake-lua
		))

;; lua-mode settings
(require 'lua-mode)
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(custom-set-variables
 '(lua-indent-level 2))

;; lua-block settings
(require 'lua-block)
(lua-block-mode t)

;;(require 'flymake-lua)
;;(add-hook 'lua-mode-hook 'flymake-lua-load)
