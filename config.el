;;; config.el --- description -*- lexical-binding: t; -*-

;;; Code:
(def-package! telan-mode
  :commands (telan-mode)
  :config
  (setq
   telan-highlights '(
      ("true|false" . font-lock-keyword-face)
      ("[0-9]*(\\.[0-9]+)?" . font-lock-constant-face)
   )
  )
)

(defvar telan-mode-syntax-table nil "Syntax table for telan-mode.")
(setq telan-mode-syntax-table
      (let ( (synTable (make-syntax-table)))

        ;; set/modify each char's class
        (modify-syntax-entry ?# "<" synTable)
        (modify-syntax-entry ?\n ">" synTable)
        (modify-syntax-entry ?( "()" synTable)
        (modify-syntax-entry ?) ")(" synTable)

        ;; return it
        synTable))

(define-derived-mode telan-mode fundamental-mode "Telan"
  "major mode for editing telan code."
  (display-line-numbers-mode)
  (highlight-indent-guides-mode)
  (setq font-lock-defaults '(telan-highlights))
  (set-syntax-table telan-mode-syntax-table)
)


(provide 'config)
;;; config.el ends here
