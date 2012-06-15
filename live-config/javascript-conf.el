; (add-live-lib-path "javascript")
; (autoload 'js2-mode "js2-mode" nil t)
; (require 'starter-kit-js)
; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
; (autoload 'js2-highlight-vars-mode "js2-highlight-vars-mode" nil t)
; (add-hook 'js2-mode-hook (lambda () (js2-highlight-vars-mode)))
; (setq js2-basic-offset 2)

(require 'espresso)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-hook 'espresso-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))
