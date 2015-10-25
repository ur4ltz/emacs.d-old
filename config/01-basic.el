;;
;; base setting


(setq default-major-mode 'text-mode)

;; --------------------------------------------------
;; Mode line
;; --------------------------------------------------
(size-indication-mode t)           ; show file size
(setq display-time-24hr-fomat t)   ; set time 24 fomat
(setq display-time-day-and-date t) ; display day and date
(display-time-mode t)              ; display time
(setq line-number-mode t)          ; show line number
(setq column-number-mode t)        ; show column number
(fset 'yes-or-no-p 'y-or-n-p)      ; "yes or no " to "y or n"

;; --------------------------------------------------
;; Display
;; --------------------------------------------------
(show-paren-mode 1)
(global-linum-mode 0)                                    ; show line number at left side 
(setq frame-title-format (format "%%f" (system-name)))   ; show file path at title bar

;; --------------------------------------------------
;; Cursor
;; --------------------------------------------------
(blink-cursor-mode 1)

;; --------------------------------------------------
;; Encoding
;; --------------------------------------------------
;;(set-language-environment "Japanese")
(prefer-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
