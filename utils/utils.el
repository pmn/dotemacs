;; A hodge podge of useful utilities.
;;

;; http://xahlee.blogspot.com/2010/03/emacs-command-to-insert-date-or-random.html
(defun insert-random-number ()
  "Insert a random number between 1 and 10"
  (interactive)
  (insert
   (number-to-string (random 10))))

(defun uniquify-region-lines (beg end)
    "Remove duplicate adjacent lines in region."
    (interactive "*r")
    (save-excursion
      (goto-char beg)
      (while (re-search-forward "^\\(.*\n\\)\\1+" end t)
        (replace-match "\\1"))))

(defun uniquify-buffer-lines ()
  "Remove duplicate adjacent lines in the current buffer."
  (interactive)
  (uniquify-region-lines (point-min) (point-max)))
