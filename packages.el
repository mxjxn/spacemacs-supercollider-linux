(setq supercollider-packages '((sclang :location local)))

(defun supercollider/init-sclang ()
  (use-package sclang
    :init
    (sclang-create-spacemacs-conf-file)
    ;; :config
    ;; (progn
         ;;TODO check if sclang and scsynth are present
    ;; )
    ))
