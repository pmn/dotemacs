;; set info
(setq user-full-name "Paul Nakata")
(setq user-mail-address "paul@pmn.org")

;; enable ido mode
(ido-mode t)

;; Get the screen to look correct
(setq mac-command-modifier 'control)
(line-number-mode t)
(column-number-mode t)

(setq inhibit-startup-message 0)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; get to meta functions with C-x, C-m and C-c, C-m
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; addons
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/modes/")
(add-to-list 'load-path "~/.emacs.d/modes/clojure-mode")
(add-to-list 'load-path "~/.emacs.d/modes/coffee-mode")
(add-to-list 'load-path "~/.emacs.d/modes/go-mode")
(add-to-list 'load-path "~/.emacs.d/color-theme/")
(add-to-list 'load-path "~/.emacs.d/color-theme/themes")
(add-to-list 'load-path "~/.emacs.d/utils/")
(add-to-list 'load-path "~/.emacs.d/utils/utils")

(load "utils")

;;; LANGUAGE SUPPORT
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

;; CoffeeScript
(require 'coffee-mode)
;; Use the appropriate number of spaces for coffeescript (2)
(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))
(add-hook 'coffee-mode-hook
	  '(lambda() (coffee-custom)))

;; Clojure
(require 'clojure-mode)
(setq-default frame-background-mode 'dark)
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

;; Go
(require 'go-mode)

;; JS
(autoload 'espresso-mode "espresso")

;;; COLOR THEMES
(require 'color-theme)
(require 'color-theme-tango)
(color-theme-initialize)
(color-theme-tango)

;; pathfix
(load "pathfix")
