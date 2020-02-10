(defun sclang-create-spacemacs-conf-file ()
  (defvar dummy-conf-file
    "~/.emacs.d/private/layers/sclang/mxjxn_sclang_Ubuntu_conf.yaml"))

  ;; (defvar spacemacs-config-file "~/Library/Application Support/SuperCollider/spacemacs_conf.yaml")
  ;; (unless (file-exists-p spacemacs-config-file)
    ;; (copy-file dummy-config-file spacemacs-config-file))

(defun sclang-move-post-buffer-right ()
  (delete-other-windows)
  (split-window-horizontally)
  (switch-to-buffer-other-window "*SCLang:PostBuffer*")
  (other-window -1)
  (spacemacs/enlarge-window-horizontally 20)
  ;; make the current window 60% of the screen wide
  (window-resize nil (- (truncate (* 0.6 (frame-width))) (window-width)) t)
  )

(defun sclang-start-right ()
  (interactive)
  (sclang-start)
  (sclang-move-post-buffer-right))

(defun sclang-show-post-buffer-right ()
  (interactive)
  (sclang-show-post-buffer)
  (sclang-move-post-buffer-right))

(defun sclang-use-post-buffer-right-split ()
  "Use a right split for the post buffer. Its width is 60% of the screen."
  (spacemacs/set-leader-keys-for-major-mode 'sclang-mode
    "RET" 'sclang-start-right)
  (spacemacs/set-leader-keys-for-major-mode 'sclang-mode
    ">" 'sclang-show-post-buffer-right))

(defun sclang-evaluate-within-parens ()
  "Evaluate code within outermost parentheses (assumes active evil mode)"
  (interactive)
  (setq unread-command-events (listify-key-sequence "mz(vi),,v`z")))
