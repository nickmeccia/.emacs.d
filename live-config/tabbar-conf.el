;; Tabbar. Hide for special buffers
(when (require 'tabbar nil t)
  (setq tabbar-buffer-groups-function
        (lambda (b) (list "All Buffers")))
  (setq tabbar-buffer-list-function
        (lambda ()
          (remove-if
           (lambda (buffer)
             (find (aref (buffer-name buffer) 0) " *"))
           (buffer-list))))
  (tabbar-mode))
