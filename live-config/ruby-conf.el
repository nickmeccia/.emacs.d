(add-live-lib-path "ruby")
;(add-live-lib-path "ruby/erm")
(add-to-list 'load-path "(path-to)/Enhanced-Ruby-Mode")
(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("Gemfile.*" . ruby-mode))
;(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(require 'ruby-mode)
(require 'ruby-electric)
(require 'rvm)
(rvm-use-default)
(rvm-activate-corresponding-ruby)
(autoload 'ruby-electric "ruby-electric" "Ruby electric mode" t)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))
(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'ruby-reindent-then-newline-and-indent)))
(defun my-ruby-reindent-then-newline-and-indent (arg)
  "blah blah blah"
  (interactive "P")
  (self-insert-command (prefix-numeric-value arg))
  (backward-delete-char)
  (ruby-reindent-then-newline-and-indent))
;(define-key ruby-mode-map " " 'my-ruby-reindent-then-newline-and-indent)
