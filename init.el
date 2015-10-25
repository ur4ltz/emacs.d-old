;; .emacs

(defvar user-emacs-directory (concat (getenv "HOME") "/.emacs.d"))

;; package settings
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; el-get settings
(setq
 el-get-dir (concat user-emacs-directory "package.d/")
 el-get-verbose t
 el-get-generate-autoloads nil)
(add-to-list 'load-path (concat user-emacs-directory "package.d/el-get/"))

;; el-get-install
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(add-to-list 'el-get-recipe-path  (concat user-emacs-directory "recipes/"))
(setq el-get-github-default-url-type 'https)

;; init-loader
(el-get 'sync '(init-loader))
(require 'init-loader)
(init-loader-load "~/.emacs.d/config")

;;(el-get-update-all 1)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "outline" :slant normal :weight normal :height 68 :width normal))))
 '(sp-pair-overlay-face ((t (:underline t)))))
