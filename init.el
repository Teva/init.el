;; in order to segregate the correct init file Ctrl+H,v  then "user-init-file" is
;; the output is the emacs init file location

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                                              ("melpa" . "https://melpa.org/packages/")))

(setq python-shell-interpreter "python3")
(setq py-python-command "python3")
(setq flycheck-python-pycompile-executable "python3")

;; do not forget to M-x 'package-refresh-package'
;; do not forget to M-x 'package install' -> 'flycheck', 'pylint', 'elpy', 'pytest'

;; the following is only needed if there is an error message including readlines

(with-eval-after-load 'python
  (defun python-shell-completion-native-try ()
    "Return non-nil if can trigger native completion."
    (let ((python-shell-completion-native-enable t)
          (python-shell-completion-native-output-timeout
           python-shell-completion-native-try-output-timeout))
      (python-shell-completion-native-get-completions
       (get-buffer-process (current-buffer))
       nil "_"))))

;; PLANTUML integration
;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))

