;;Set up the Common Lisp environment
(add-to-list 'load-path "/usr/share/common-lisp/source/slime/")
(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup)

;; Text and the such
;; Use colors to highlight commands, etc.
(global-font-lock-mode t) 
;; Disable the welcome message
(setq inhibit-startup-message t)
;; Format the title-bar to always include the buffer name
(setq frame-title-format "emacs - %b")
;; Display time
(display-time)
;; Make the mouse wheel scroll Emacs
(mouse-wheel-mode t)
;; Always end a file with a newline
(setq require-final-newline t)
;; Stop emacs from arbitrarily adding lines to the end of a file when the
;; cursor is moved past the end of it:
(setq next-line-add-newlines nil)
;; Flash instead of that annoying bell
(setq visible-bell t)
;; Remove icons toolbar
(if (> emacs-major-version 20)
(tool-bar-mode -1))
;; Use y or n instead of yes or not
(fset 'yes-or-no-p 'y-or-n-p)

(defun faces_x ()
;; these are used when in X
(custom-set-faces
'(default ((t (:foreground "wheat" :background "black"))))
'(flyspell-duplicate ((t (:foreground "Gold3" :underline t :weight normal))))
'(flyspell-incorrect ((t (:foreground "OrangeRed" :underline t :weight normal))))
'(font-lock-comment-face ((t (:foreground "SteelBlue1"))))
'(font-lock-function-name-face ((t (:foreground "gold"))))
'(font-lock-keyword-face ((t (:foreground "springgreen"))))
'(font-lock-type-face ((t (:foreground "PaleGreen"))))
'(font-lock-variable-name-face ((t (:foreground "Coral"))))
'(menu ((((type x-toolkit)) (:background "light slate gray" :foreground "wheat" :box (:line-width 2 :color "grey75" :style released-button)))))
'(mode-line ((t (:foreground "black" :background "light slate gray"))))
'(tool-bar ((((type x w32 mac) (class color)) (:background "midnight blue" :foreground "wheat" :box (:line-width 1 :style released-button))))))
(set-cursor-color "deep sky blue")
(set-foreground-color "wheat")
(set-background-color "black")
(set-face-foreground 'default "wheat")
(set-face-background 'default "black"))
(defun faces_nox ()
;; these are used when in terminal
(custom-set-faces
'(default ((t (:foreground "white" :background "black"))))
'(font-lock-comment-face ((t (:foreground "magenta"))))
'(font-lock-function-name-face ((t (:foreground "red"))))
'(font-lock-keyword-face ((t (:foreground "green"))))
'(font-lock-type-face ((t (:foreground "blue"))))
'(font-lock-string-face ((t (:foreground "cyan"))))
'(font-lock-variable-name-face ((t (:foreground "blue"))))
'(menu ((((type x-toolkit)) (:background "white" :foreground "black" :box (:line-width 2 :color "grey75" :style released-button)))))
'(modeline ((t (:foreground "blue" :background "white")))))
(set-cursor-color "blue")
(set-foreground-color "white")
(set-background-color "black")
(set-face-foreground 'default "white")
(set-face-background 'default "black"))
(if window-system
(faces_x)
(faces_nox))
