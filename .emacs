(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(tool-bar-mode -1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(unless (package-installed-p 'cider)
  (package-install 'cider))

(unless (package-installed-p 'fiplr)
  (package-install 'fiplr))

(add-to-list 'exec-path "/usr/local/bin")

(global-set-key (kbd "C-x f") 'fiplr-find-file)
