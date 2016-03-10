(delete-selection-mode)
(defun my-verilog-hook ()
    (setq indent-tabs-mode nil)
    (setq tab-width 3))
 (add-hook 'verilog-mode-hook 'my-verilog-hook)
(setq c-default-style "linux"
          c-basic-offset 4)
(fset 'last-shell-command
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217761 134217840 return] 0 "%d")) arg)))
(global-set-key (kbd "M-p") 'last-shell-command)
(fset 'init-file
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 67108896 1 backspace 126 47 46 101 109 97 99 115 46 100 47 105 110 105 116 46 101 108 return] 0 "%d")) arg)))
(fset 'python
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 67108896 1 backspace 126 47 80 114 111 103 114 97 109 109 105 110 103 47 80 121 116 104 111 110 47 return] 0 "%d")) arg)))
(fset 'run
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217761 112 121 116 104 111 110 51 32 126 47 80 114 111 103 114 97 109 109 105 110 103 47 80 121 116 104 111 110 47 102 112 104 47 112 121 116 104 111 110 47 109 97 105 110 46 112 121 return] 0 "%d")) arg)))
(fset 'projecteuler
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 1 67108896 5 backspace 126 47 80 114 111 103 114 97 109 109 105 110 103 47 112 114 111 106 101 99 116 117 backspace 101 117 108 101 114 47 return] 0 "%d")) arg)))
(fset 'go
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 1 67108896 5 backspace 126 47 80 114 111 103 114 97 109 109 105 110 103 47 103 111 47 115 114 99 47 103 105 116 104 117 98 46 99 111 109 47 103 114 97 103 97 115 47 return] 0 "%d")) arg)))
(fset 'cs421
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 67108896 1 backspace 126 47 80 114 111 103 114 97 109 109 105 110 103 47 72 97 115 107 101 108 108 47 99 115 52 50 49 return] 0 "%d")) arg)))
(fset 'math-assignment
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 67108896 1 backspace 126 47 104 backspace 109 97 116 104 47 52 backspace 98 97 115 101 46 116 101 120 return 24 104 134217847 24 98 return 24 104 backspace 25 24 19] 0 "%d")) arg)))
(fset 'bliss
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 67108896 1 backspace 126 47 80 114 111 103 114 97 109 109 105 110 103 47 98 108 105 115 115 47 return] 0 "%d")) arg)))
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(set-default-font "DejaVu Sans Mono-14")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (light-blue)))
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$")
 '(package-archives
   (quote
	(("gnu" . "http://elpa.gnu.org/packages/")
	 ("melpa-stable" . "http://stable.melpa.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-cursor-color "#FFFF00")
(add-hook 'dired-load-hook '(lambda () (require 'dired-x))) ; Load Dired X when Dired is loaded.
(setq dired-omit-mode t) ; Turn on Omit mode.
(setq column-number-mode t) ; Turn on Column Number mode.
(add-to-list 'load-path "~/.emacs.d/manually_added/")
(require 'go-mode-autoloads)
(require 'fireplace)
(require 'package)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq-default tab-width 4)

(defun transpose-windows ()
  (interactive)
  (let ((this-buffer (window-buffer (selected-window)))
        (other-buffer (prog2
                          (other-window +1)
                          (window-buffer (selected-window))
                        (other-window -1))))
    (switch-to-buffer other-buffer)
    (switch-to-buffer-other-window this-buffer)
    (other-window -1)))
