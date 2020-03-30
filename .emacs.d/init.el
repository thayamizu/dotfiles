;------------------------------------------------
; plugins
;------------------------------------------------
;set autoload path
(add-to-list 'load-path "~/.emacs.d/lib/apel-10.8")
(add-to-list 'load-path "~/.emacs.d/lib/film-1.14.9")
(add-to-list 'load-path "~/.emacs.d/lib/semi-1.14.6")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")

;set emacs-server
(require 'server)
(unless (server-running-p)
  (server-start))


;not backup
(setq backup-inhibited t)

;;スタートアップメッセージを抑制
(setq inhibit-startup-message t)

;; after-save-hook
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;;エラー発生時にデバッグする
(setq debug-on-error t)

;;ring-bellを無効か
(setq ring-bell-function 'ignore)

;;info+
(eval-after-load "info" '(require 'info+))

;;タイムスタンプの設定を更新
(require 'time-stamp)
(add-hook 'before-save-hook 'time-stamp)
(setq time-stamp-active t)
(setq time-stamp-start "last updated : ")
(setq time-stamp-format "%04y/%02m/%02d")
(setq time-stamp-end " \\|$")

;;;-----------------------------------------------
;;;auto-install.el
;;;-----------------------------------------------
;;auto-install
;(add-to-list 'load-path "~/.emacs.d/auto-install/")
;(setq auto-install-directory "~/.emacs.d/auto-install/")
;(require 'auto-install)


;;auto-install-update-emacswiki
;(auto-install-update-emacswiki-package-name t)

;;install-elisp
;(auto-install-compatibility-setup)

;;ediff
;(setq ediff-window-setup-function
;      'ediff-setup-windows-plain)

;;---------------------------------------------
;;ELPA
;;------------------------------------------------
;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
;(when
;    (load
;     (expand-file-name "~/.emacs.d/elpa/package.el"))
;  (package-initialize))

;;;------------------------------------------------
;;;エディタ設定
;;;------------------------------------------------
;;linum は重くなるので無効化する
;(require 'linum)          ;linum-mode
;(global-linum-mode t)
;(setq linum-format "%5d")

;; デフォルトスペーシング 2
(set-default 'line-spacing 2)

;; フォントロックモードを有効化
(global-font-lock-mode t)

;; 行ハイライト有効
(global-hl-line-mode t)

;; ステータスバー
(display-time-mode t)
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
;; ;;$B%&%$%s%I%&$N=i4|CM(B
;(setq default-frame-alist
;      (append (list
;	       '(width . 80)
;	       '(height . 40)
;	       '(top . 50)
;	       '(left . 50)
;		)
;
;	       default-frame-alist))
      ;; ;;$B%+%i!<@_Dj(B
;(require 'color-theme)
;(require 'zenburn)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-zenburn)))
;; (if window-system (progn
;; 		    ;; ;; $BJ8;z$N?'$r@_Dj$7$^$9!#(B
;; 		    (add-to-list 'default-frame-alist '(foreground-color . "black"))
;; 		    ;; ;; $BGX7J?'$r@_Dj$7$^$9!#(B
;; 		    ;(add-to-list 'default-frame-alist '(background-color . "black"))

;; 		    ;; ;; $B%+!<%=%k$N?'$r@_Dj$7$^$9!#(B
;; 		    ;(add-to-list 'default-frame-alist '(cursor-color . "cyan"))
;; 		    ;; ;; $B%^%&%9%]%$%s%?$N?'$r@_Dj$7$^$9!#(B
;; 		    ;(add-to-list 'default-frame-alist '(mouse-color . "cyan"))
;; 		    ;; ;; $B%b!<%I%i%$%s$NJ8;z$N?'$r@_Dj$7$^$9!#(B
;; 		    ;(set-face-foreground 'modeline "black")
;; 		    ;; ;; $B%b!<%I%i%$%s$NGX7J?'$r@_Dj$7$^$9!#(B
;; 		    ;(;set-face-background 'modeline "lightgray")
;; 		    ;; ;; $BA*BrCf$N%j!<%8%g%s$N?'$r@_Dj$7$^$9!#(B
;; 		    ;(;set-face-background 'region "darkcyan")
;; 		    ;; ;; $B%b!<%I%i%$%s!J%"%/%F%#%V$G$J$$%P%C%U%!!K$NJ8;z?'$r@_Dj$7$^$9!#(B
;; 		    ;(;set-face-foreground 'mode-line-inactive "gray30")
;; 		    ;; ;; $B%b!<%I%i%$%s!J%"%/%F%#%V$G$J$$%P%C%U%!!K$NGX7J?'$r@_Dj$7$^$9!#(B
;; 		    ;(set-face-background 'mode-line-inactive "gray85")
;; 		    ;;$B2hLL$rF)2a(B
;; 		   ; (add-to-list 'default-frame-alist '(alpha . (80 40)))))
;; ;; ;; $BJ8;z$N?'$r@_Dj$7$^$9!#(B
;; 								    ;; ;(add-to-list 'default-frame-alist '(foreground-color . "gray10"))
;; ;; ;; $BGX7J?'$r@_Dj$7$^$9!#(B
;; (add-to-list 'default-frame-alist '(background-color . "white"))
;; ;; ;; $B%+!<%=%k$N?'$r@_Dj$7$^$9!#(B
;; (add-to-list 'default-frame-alist '(cursor-color . "SlateBlue2"))
;; ;; ;; $B%^%&%9%]%$%s%?$N?'$r@_Dj$7$^$9!#(B
;; (add-to-list 'default-frame-alist '(mouse-color . "SlateBlue2"))
;; ;; ;; $B%b!<%I%i%$%s$NJ8;z$N?'$r!#(B
;; (set-face-foreground 'modeline "gray")
;; ;; ;; $B%b!<%I%i%$%s$NGX7J?'$r@_Dj$7$^$9!#(B
;; (set-face-background 'modeline "MediumPurple2")
;; ;; ;; $BA*BrCf$N%j!<%8%g%s$N?'$r@_Dj$7$^$9!#(B
;; (set-face-background 'region "LightSteelBlue1")
;; ;; ;; $B%b!<%I%i%$%s!J%"%/%F%#%V$G$J$$%P%C%U%!!K$NJ8;z?'$r@_Dj$7$^$9!#(B
;; (set-face-foreground 'mode-line-inactive "gray30")
;; ;; ;; $B%b!<%I%i%$%s!J%"%/%F%#%V$G$J$$%P%C%U%!!K$NGX7J?'$r@_Dj$7$^$9!#(B
;; (set-face-background 'mode-line-inactive "gray85")
;; ;;$B2hLL$rF)2a(B
;; ;;(add-to-list 'default-frame-alist '(alpha . (90 70)))
;;  )):

;;;------------------------------------------------
;;;フォント
;;;------------------------------------------------
(set-default-font "Inconsolata-14")
;(set-face-font 'variable-pitch "Inconsolata-14")
;(set-fontset-font (frame-parameter nil 'font)
;                   'japanese-jisx0208
;                   '("Takao$B%4%7%C%/(B" . "unicode-bmp"))

;;;------------------------------------------------
;;;言語
;;;------------------------------------------------
(set-language-environment "Japanese")

;;;------------------------------------------------
;;;メニューとロケール
;;;------------------------------------------------
;(if (equal (substring (concat (getenv "LANG") "__") 0 2) "ja")
; (require 'menu-tree))
;(setq tree-menu-coding-system 'utf-8)

;; ツールバー非表示
(tool-bar-mode nil)

;recentf
(require 'recentf)
(recentf-mode t)

;; フレーム表記
(setq frame-title-format "%b")

;;;------------------------------------------------
;;;検索
;;;------------------------------------------------
;; speedbar
;(require 'sr-speedbar)
;(setq sr-speedbar-right-side nil)

;; ffap-b
(ffap-bindings)

;; uniquefy
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")

;; iswitchb
(iswitchb-mode t)
(setq read-buffer-function 'iswitchb-read-buffer)
(setq iswitchb-regexp nil)
(setq iswitchb-prompt-newbuffer nil)

;; bookmark-save-flags
(setq bookmark-save-flag t)
;; bookmark-sort-flags
(progn
  (setq bookmark-sort-flag nil)
  (defun bookmark-arrange-latest-top ()
    (let ((latest (bookmark-get-bookmark bookmark)))
      (setq bookmark-alist (cons latest (delq latest bookmark-alist))))
    (bookmark-save))
  (add-hook 'bookmark-after-jump-hook 'bookmark-arrange-latest-top))

;;tempbuf
;(require 'tempbuf)
;;$B%U%!%$%k$r3+$$$?$i<+F0E*$K(Btempbuf$B$rM-8z$K$9$k(B
;(add-hook 'find-file-hooks 'turn-on-tempbuf-mode)
;;dired$B$K$?$$$7$F$b!"(Btempbuf$B$rM-8z$K$9$k(B
;(add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)

;; auto-save-buffers
;(require 'auto-save-buffers)
;(run-with-idle-timer 2 t 'auto-save-buffers)

;; Emacs as Imave viewer
(auto-image-file-mode t)
(setq thumbs-thumbsdir
       (expand-file-name "~/.emacs-thumbs"))
 (setq thumbs-temp-dir (expand-file-name "~/tmp"))

;;;------------------------------------------------
;;;Dired
;;;------------------------------------------------
; bf-mode
(require 'dired)
(require 'bf-mode)
(setq bf-mode-except-ext '("\\.exe$" "\\.com$"))
(setq bf-mode-html-with-w3m t) ; html $B$O(B w3m $B$GI=<($9$k(B
(setq bf-mode-archive-list-verbose t) ; $B05=L$5$l$?%U%!%$%k$rI=<((B
(setq bf-mode-directory-list-verbose t); $B%G%#%l%/%H%jFb$N%U%!%$%k0lMw$rI=<((B

;;wdired
(require 'wdired)

;; ------------------------------------------------
;; windows.el
;; ------------------------------------------------
;; windows.el
;; (require 'windows)
;; (win:startup-with-window)
;; (define-key ctl-x-map "C" 'see-you-again)

;; revive.el
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe emacs" t)

;;;------------------------------------------------
;;;elscreeen
;;;------------------------------------------------
;(require 'elscreen)
;(require 'elscreen-dnd)
;(require 'elscreen-howm)
;(require 'elscreen-w3m)
;
;(defun elscreen-frame-title-update ()
;  (when (elscreen-screen-modified-p 'elscreen-frame-title-update)
;    (let* ((screen-list (sort (elscreen-get-screen-list) '<))
;(screen-to-name-alist (elscreen-get-screen-to-name-alist))
;(title (mapconcat
;(lambda (screen)
;(format "%d%s %s"
;screen (elscreen-status-label screen)
;(get-alist screen screen-to-name-alist)))
;screen-list " ")))
;      (if (fboundp 'set-frame-name)
;(set-frame-name title)
;(setq frame-title-format title)))))
;
;(eval-after-load "elscreen"
;  '(add-hook 'elscreen-screen-update-hook 'elscreen-frame-title-update))


;;;------------------------------------------------
;;;anything
;;;------------------------------------------------
;(require 'anything-startup)
;
;; ;;yasnippet
;(require 'yasnippet-config)
;(require 'anything-c-yasnippet)
;(yas/setup "~/.emacs.d/plugins")
;
;; yasnippetでメニューを使う
;(setq yas/use-menu t)

;; yasnippetのトリガーキー
;(setq yas/trigger-key (kbd "TAB TAB"))
;(setq yas/next-field-key (kbd "TAB"))

;; autoinsert
(require 'autoinsert)
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-directory "~/.emacs.d/template/")
(setq auto-insert-alist
      (nconc '(
	       ("\\.cs"    . ["template.cs"     my-template])
	       ("\\.org"    . ["template.org"     my-template])
	       ("\\.cpp"   . ["template.cpp"   my-template])
	       ("\\.c"     . ["template.c"     my-template])
	       ("\\.h$"    . ["template.h"     my-template])
	       ("\\.java"  . ["template.java"  my-template])
	       ("\\.pl"    . ["template.pl"    my-template])
	       ("\\.rb"    . ["template.rb"    my-template])
		) auto-insert-alist))
(require 'cl)

(defvar template-replacements-alists
  '(("%file%" . (lambda () (file-name-nondirectory (buffer-file-name))))
    ("%file-without-ext%" . (lambda () (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
    ("%include-guard%" . (lambda () (format "NYX_INCLUDED_%s_H_" (upcase (file-name-sans-extension (file-name-nondirectory buffer-file-name))))))))

(defun my-template ()
  (time-stamp)
   (mapc #'(lambda(c)
	     (progn
	       (goto-char (point-min))
	       (replace-string (car c) (funcall (cdr c)) nil)))
	 template-replacements-alists)
   (goto-char (point-max))
   (message "done."))
 (add-hook 'find-file-not-found-hooks 'auto-insert)

;; ;;;------------------------------------------------
;; ;;;auto-complete
;; ;;;------------------------------------------------
;(require 'auto-complete)
;(require 'auto-complete-config)


;-----------------------------------------------
;$B%W%m%0%i%_%s%0;Y1g(B
;-----------------------------------------------
; flymake
(require 'flymake)
(defun flymake-cc-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (list "g++" (list "-Wall" "-Wextra" "-Wconversion" "-fsyntax-only" local-file))))
(push '("\\.cpp$" flymake-cc-init) flymake-allowed-file-name-masks)


;smart-compile
; ref. http://homepage.mac.com/zenitani/elisp-j.html#smart-compile
;(require 'smart-compile+)
;(define-key menu-bar-tools-menu [compile] '("Compile..." . smart-compile))
;(when (require 'smart-compile+ "smart-compile" t)
;  (global-set-key "\C-cc" 'smart-compile)
;  (add-hook 'cc-mode-common-hook
;            (lambda ()(local-set-key "\C-cc" 'smart-compile)))
;  (add-hook 'sh-mode-hook
;            (lambda ()(local-set-key "\C-cc" 'smart-compile))))

;configure cc-mode-common
(add-hook 'cc-mode-common-hook
	  '(lambda ()
	     (c-set-style "cc-mode")
	     (setq c-basic-offset 4)
	     (c-set-offset 'inline-open 0 )
	     (c-set-offset 'substatement-open 0 )
	     (c-set-offset 'case-label 4 )
	     (c-toggle-auto-hungry-state t)
	     (define-key c-mode-base-map "\C-m" 'newline-and-indent)
 	     (flymake-mode t)))


;cperl-mode
; ref. http://www.bookshelf.jp/soft/meadow_41.html#SEC619
(autoload 'cperl-mode "cperl-mode"
  "alternate mode for editing Perl programs" t)
(setq auto-mode-alist
      (append '(("\\.\\([pP][Llm]\\|al\\)$" . cperl-mode))  auto-mode-alist ))
(setq interpreter-mode-alist (append interpreter-mode-alist

                                     '(("perl" . cperl-mode))))

;ruby-mode
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                     interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
          '(lambda ()
	     (inf-ruby-keys)))

;python-mode
(autoload 'python-mode "python-mode" "Python editing mode" t)
(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
	    interpreter-mode-alist))

;lua-mode
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook 'turn-on-font-lock)

;GNU GLOBAL(gtags)
;(require 'gtags)
;(setq gtags-mode-hook
;      '(lambda ()
;         (local-set-key "\M-t" 'gtags-find-tag)
;         (local-set-key "\M-r" 'gtags-find-rtag)
;         (local-set-key "\M-s" 'gtags-find-symbol)
;         (local-set-key "\C-t" 'gtags-pop-stack)))

;auto create TAGS file
(defadvice find-tag (before c-tag-file activate)
  "Automatically create tags file."
  (let ((tag-file (concat default-directory "TAGS")))
    (unless (file-exists-p tag-file)
      (shell-command "etags *.[ch] *.el .*.el -o TAGS 2>/dev/null"))
    (visit-tags-table tag-file)))

;scheme-mode
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)
(defun run-guile () (interactive) (run-scheme "guile"))

;javascript-mode
(autoload 'javascript-mode "javascript" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))

;html-helper-mode
(add-hook 'html-helper-load-hook '(lambda () (require 'html-font)))
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist
      (append '(("\\.html$" . html-helper-mode)
 		("\\.shtml$" . html-helper-mode)
 		("\\.html$" . html-helper-mode)
 		("\\.shtml$" . html-helper-mode)
 		) auto-mode-alist))

;css-mode
(autoload 'css-mode "css-mode")
(setq auto-mode-alist (cons '("\\.css$" . css-mode) auto-mode-alist))

;haskell-mode
(autoload 'haskell-mode "haskell-mode")

;gdb-mode
(setq gdb-many-windows t)
(setq gdb-use-separate-io-buffer t) ; "IO buffer" $B$,I,MW$J$$>l9g$O(B  nil $B$G(B

;gist
;(require 'gist)

;C# mode
(require 'csharp-mode)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;markdown-mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;-----------------------------------------------
;shell
;-----------------------------------------------
;bash
(setq shell-file-name "zsh")
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name)
(set-language-environment "Japanese")

;buffer-clear
; ref.http://www.bookshelf.jp/pukiwiki/pukiwiki.php?Eshell%A4%F2%BB%C8%A4%A4%A4%B3%A4%CA%A4%B9#content_1_42
(defun my-eshell-hook ()
  (local-set-key "\C-a" 'eshell-bol))
(add-hook 'eshell-mode-hook 'my-eshell-hook)

;eshell
 (setq eshell-prompt-function
       (lambda nil
	 (concat
	  "t.hayamizu@eshell "
	  (format-time-string "%H:%M" (current-time))
	  (if (= (user-uid) 0) " # " " $ "))))

;shell/clear
(defun eshell/clear ()
  "Clear the current buffer, leaving one prompt at the top."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

;color-moccur
;(require 'color-moccur)

;moccur-edit
;(require 'moccur-edit)
;(setq moccur-split-word t);$B$9$Z!<$9$G6h@Z$i$l$?J#?t$NC18l$r$^$C$A(B

;igrep.el
;(require 'igrep)

;grep-a-lot
;(require 'grep-a-lot)
;(grep-a-lot-setup-keys)

;igrep$BMQ(B
;(grep-a-lot-advise igrep)

;grep-edit
;(require 'grep-edit)

;;;;-----------------------------------------------
;;;;org-mode
;;;;-----------------------------------------------
;(require 'org)
;
;;;Todo
; (setq org-todo-keywords '("TODO" "Wait" "DONE")
;      org-todo-interpretation 'sequence)
;
;;;tex+pdf
;(setq org-export-latex-date-format "%Y-%m-%d")
;(setq org-export-latex-classes nil)
;(add-to-list 'org-export-latex-classes
;  '("jarticle"
;    "\\documentclass[a4j]{jarticle}"
;    ("\\section{%s}" . "\\section*{%s}")
;    ("\\subsection{%s}" . "\\subsection*{%s}")
;    ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;    ("\\paragraph{%s}" . "\\paragraph*{%s}")
;    ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;
;;;begin_src listings
;(require 'org-latex)
;(add-to-list 'org-export-latex-packages-alist '("" "listings"))
;(add-to-list 'org-export-latex-packages-alist '("" "color"))
;
;(setq org-export-latex-listings 'mited)
;  (setq org-latex-minted-options
;     '(("frame" "lines") ("linenos=true")))
;
;;-----------------------------------------------
;; Cygwin
;;-----------------------------------------------
;(when (eq system-type 'windows-nt)
;   (require 'cygwin-mount)
;   (cygwin-mount-activate))
;
;;-----------------------------------------------
;; HOWM
;;-----------------------------------------------
;;howm
;(require 'howm)
;(setq howm-menu-lang 'ja)
;(global-set-key "\C-c,," 'howm-menu)
;(mapc
; (lambda (f)
;   (autoload f
;     "howm" "Hitori Otegaru Wiki Modoki" t))
; '(howm-menu howm-list-all howm-list-recent
;             howm-list-grep howm-create
;             howm-keyword-to-kill-ring))
;(setq howm-menu-refresh-after-save nil)
;(setq howm-refresh-after-save nil)
;
;
;;-----------------------------------------------
;;w3m
;;-----------------------------------------------
;(when (eq system-type 'windows-nt)
;  (setq w3m-command "~/Software/w3m"))
;(when (eq system-type 'darwin)
;  (setq w3m-command "/usr/local/bin/w3m"))
;
;(autoload 'w3m "w3m"
;  "Interface for w3m on Emacs." t)
;(autoload 'w3m-find-file "w3m"
;  "Find a local file using emacs-w3m." t)
;(autoload 'w3m-search "w3m-search"
;  "Search words using emacs-w3m." t)
;(autoload 'w3m-weather "w3m-weather"
;  "Display a weather report." t)
;(autoload 'w3m-antenna "w3m-antenna"
;  "Report changes of web sites." t)
;(autoload 'w3m-namazu "w3m-namazu"
;  "Search files with Namazu." t)
;
;;use cookie
;(setq w3m-use-cookies t)
;
;;home page is google
;(setq w3m-home-page "http://www.google.co.jp")
;
;(setq w3m-fill-column -10)
;
;;display inline image
;(setq w3m-default-display-inline-images t)
;
;;appliaction binding for w3m
;(setq w3m-content-type-alist
;      '(("text/plain" "\\.\\(txt\\|tex\\|diary\\|el\\)" nil)
;        ("text/html" "\\.s?html?$" w3m-w32-browser-with-fiber)
;        ("text/html" "[0-9]+$" w3m-w32-browser-with-fiber)
;        ("image/jpeg" "\\.jpe?g$" ("fiber.exe" file))
;        ("image/png" "\\.png$" ("fiber.exe" file))
;        ("image/gif" "\\gif$" ("fiber.exe" file))
;        ("image/tiff" "\\tif?f$" ("fiber.exe" file))
;        ("image/x-xwd" "\\.xwd$" ("fiber.exe" file))
;        ("image/x-xbm" "\\.xbm$" ("fiber.exe" file))
;        ("image/x-xpm" "\\.xpm$" ("fiber.exe" file))
;        ("image/x-bmp" "\\.bmp$" ("fiber.exe" file))
;        ("video/mpeg" "\\.mpe?g$" ("fiber.exe" file))
;        ("video/quicktime" "\\.mov$" ("fiber.exe" file))
;        ("application/postscript"
;         "\\.\\(ps\\|eps\\)$" ("fiber.exe" file))
;        ("application/pdf" "\\.pdf$" ("fiber.exe" file))))


;; powerline.el
(defun arrow-right-xpm (color1 color2)
  "Return an XPM right arrow string representing."
  (format "/* XPM */
static char * arrow_right[] = {
\"12 18 2 1\",
\". c %s\",
\"  c %s\",
\".           \",
\"..          \",
\"...         \",
\"....        \",
\".....       \",
\"......      \",
\".......     \",
\"........    \",
\".........   \",
\".........   \",
\"........    \",
\".......     \",
\"......      \",
\".....       \",
\"....        \",
\"...         \",
\"..          \",
\".           \"};"  color1 color2))

(defun arrow-left-xpm (color1 color2)
  "Return an XPM right arrow string representing."
  (format "/* XPM */
static char * arrow_right[] = {
\"12 18 2 1\",
\". c %s\",
\"  c %s\",
\"           .\",
\"          ..\",
\"         ...\",
\"        ....\",
\"       .....\",
\"      ......\",
\"     .......\",
\"    ........\",
\"   .........\",
\"   .........\",
\"    ........\",
\"     .......\",
\"      ......\",
\"       .....\",
\"        ....\",
\"         ...\",
\"          ..\",
\"           .\"};"  color2 color1))


(defconst color1 "#FF6699")
(defconst color3 "#CDC0B0")
(defconst color2 "#FF0066")
(defconst color4 "#CDC0B0")

(defvar arrow-right-1 (create-image (arrow-right-xpm color1 color2) 'xpm t :ascent 'center))
(defvar arrow-right-2 (create-image (arrow-right-xpm color2 "None") 'xpm t :ascent 'center))
(defvar arrow-left-1  (create-image (arrow-left-xpm color2 color1) 'xpm t :ascent 'center))
(defvar arrow-left-2  (create-image (arrow-left-xpm "None" color2) 'xpm t :ascent 'center))

(setq-default mode-line-format
 (list  '(:eval (concat (propertize " %b " 'face 'mode-line-color-1)
                        (propertize " " 'display arrow-right-1)))
        '(:eval (concat (propertize " %m " 'face 'mode-line-color-2)
                        (propertize " " 'display arrow-right-2)))

        ;; Justify right by filling with spaces to right fringe - 16
        ;; (16 should be computed rahter than hardcoded)
        '(:eval (propertize " " 'display '((space :align-to (- right-fringe 17)))))

        '(:eval (concat (propertize " " 'display arrow-left-2)
                        (propertize " %p " 'face 'mode-line-color-2)))
        '(:eval (concat (propertize " " 'display arrow-left-1)
                        (propertize "%4l:%2c  " 'face 'mode-line-color-1)))
))

(make-face 'mode-line-color-1)
(set-face-attribute 'mode-line-color-1 nil
                    :foreground "#fff"
                    :background color1)

(make-face 'mode-line-color-2)
(set-face-attribute 'mode-line-color-2 nil
                    :foreground "#fff"
                    :background color2)

(set-face-attribute 'mode-line nil
                    :foreground "#fff"
                    :background color3
                    :box nil)
(set-face-attribute 'mode-line-inactive nil
                    :foreground "#ffff"
                    :background color4)
