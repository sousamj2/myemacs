;; (require 'package)
;; (setq package-enable-at-startup nil)
;; (add-to-list 'package-archives
;; 	     '("melpa" . "https://melpa.org/packages/"))
;; (package-initialize)

;; (when (not package-archive-contents)
;;     (package-refresh-contents))


;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))
;; (unless (package-installed-p 'monokai-theme)
;;   (package-refresh-contents)
;;   (package-install 'monokai-theme))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; '(fullscreen . maximize)

;; Load the generated configuration if it exists.
;; On a fresh installation, generate config.el from config.org first.
(let ((config-el (expand-file-name "~/.emacs.d/config.el"))
      (config-org (expand-file-name "~/.emacs.d/config.org")))
  (if (file-exists-p config-el)
      (load-file config-el)
    (org-babel-load-file config-org)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-enabled-themes '(monokai))
;;  '(custom-safe-themes
;;    '("8dbbcb2b7ea7e7466ef575b60a92078359ac260c91fe908685b3983ab8e20e3f" default))
;;  '(package-selected-packages
;;    '(jedi pyenv company-jedi yasnippet-snippets yasnippet company-irony mark-multiple swiper symon dmenu diminish spaceline company dashboard rainbow-delimiters rainbow-mode sudo-edit hungry-delete treemacs winum avy smex ido-vertical-mode org-bullets beacon monokai-theme which-key)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :extend nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 130 :width normal :foundry "ADBO" :family "DejaVu Sans Mono")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(all-the-icons-dired auto-package-update beacon command-log-mode
			 company company-box counsel-projectile
			 dired-hide-dotfiles dired-open dired-single
			 doom-modeline doom-themes general helpful
			 hungry-delete ivy-prescient ivy-rich lsp-ivy
			 lsp-mode lsp-treemacs lsp-ui magit
			 org-bullets rainbow-delimiters treemacs
			 visual-fill-column winum)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
