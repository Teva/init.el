(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                                              ("melpa" . "https://melpa.org/packages/")))

(setq python-shell-interpreter "python3")
(setq py-python-command "python3")
(setq flycheck-python-pycompile-executable "python3")

;; do not forget to M-x 'refresh-package'
;; do not forget to M-x 'package install' -> 'flycheck', 'pylint', 'elpy', 'pytest'
