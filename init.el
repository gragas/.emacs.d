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
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(set-default-font "DejaVu Sans Mono-10")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-cursor-color "#FFFF00")
