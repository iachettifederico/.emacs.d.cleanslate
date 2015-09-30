(package-initialize)
(dolist (repo '(("elpa"      . "http://tromey.com/elpa/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("melpa"     . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives repo))

(unless (package-installed-p 'package+)
  (package-refresh-contents)
  (package-install 'package+))

(package-manifest
 'package+ 
 'magit
 )

;; vendored packages
; (fdx/load-init-file "fdx/vendor/<filename>")
