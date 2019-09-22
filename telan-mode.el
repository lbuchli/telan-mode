;;; ~/.doom.d/telan-mode.el -*- lexical-binding: t; -*-
;; a simple major mode, telan-mode

;;; Code:
(setq telan-highlights
      '(
        ("^#.*$" . font-lock-comment-face)
      ))

(define-derived-mode telan-mode fundamental-mode "Telan"
  "major mode for editing telan code."
  (setq font-lock-defaults '(telan-highlights)))

(provide 'telan-mode)
;;; telan-mode.el ends here
