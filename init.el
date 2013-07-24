;; This is where everything starts
(setq mouse-wheel-mode nil)
;; Create a variable to store the path to this dotfile directory
;; (Usually ~/.emacs.d)
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; Create variables to store the path to this dotfile dir's lib etc and tmp directories
(setq dotfiles-lib-dir (concat dotfiles-dir "lib/"))
(setq dotfiles-tmp-dir (concat dotfiles-dir "tmp/"))
(setq dotfiles-etc-dir (concat dotfiles-dir "etc/"))

;; Create helper fns for loading dotfile paths and files
(defun add-dotfile-path (p)
  (add-to-list 'load-path (concat dotfiles-dir p)))

(defun add-lib-path (p)
  (add-to-list 'load-path (concat dotfiles-lib-dir p)))

(defun load-dotfile (f)
  (load-file (concat dotfiles-dir f)))



;; Ensure the lib directory is on the load path
(add-dotfile-path "lib")


;; Pull in live-coding config (see https://github.com/overtone/live-coding-emacs)
(load-dotfile "live-config/live.el")


;; Pull in personalised config
(load-dotfile "config/core.el")

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-indent-next-pair-timer-interval (quote ((default 0.0005))))
 '(css-indent-offset 2)
 '(espresso-indent-level 2)
 '(scss-compile-at-save nil)
 '(speedbar-default-position (quote left))
 '(speedbar-show-unknown-files t)
 '(tabbar-auto-scroll-flag nil)
 '(tabbar-background-color "#f9f9f5")
 '(tabbar-cycle-scope (quote tabs))
 '(tabbar-home-button (quote (("") "")))
 '(tabbar-mwheel-mode nil nil (tabbar))
 '(tabbar-scroll-left-button (quote (("") "")))
 '(tabbar-scroll-right-button (quote (("") "")))
 '(tabbar-separator (quote (3)))
 '(tabbar-use-images nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-even-diff-B ((((class color) (background dark)) (:background "tomato"))))
 '(ediff-odd-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-odd-diff-B ((((class color) (background dark)) (:background "tomato"))))
 '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black"))))
 '(tabbar-button ((t (:inherit tabbar-default :foreground "dark red"))))
 '(tabbar-default ((t (:inherit variable-pitch :background "#f5f5eb" :foreground "#987372" :underline nil :height 0.8))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#fe3798" :foreground "#171717" :box (:line-width 1 :color "white" :style pressed-button)))))
 '(tabbar-separator ((t (:inherit tabbar-default :height 0.1 :width normal)))))


;(load-file "/usr/lib/factor/misc/fuel/fu.el")
(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)


(color-theme-blackbored)
(color-theme-almost-monokai)
