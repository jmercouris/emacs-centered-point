;;; centeredpoint.el --- Recenter the cursor every time that it moves. -*- lexical-binding: t; -*-

;; Copyright (C) 2016-2021 John Mercouris

;; Author: John Mercouris
;; Created: 16 April 2016
;; Homepage: https://github.com/jmercouris/emacs-centered-point
;; Keywords: convenience
;; Package-Requires: ((emacs "19.20"))

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;;; Code:

(define-minor-mode centered-point-mode
  "Alaways center the cursor in the middle of the screen."
  :lighter "..."
  (cond (centered-point-mode (add-hook 'post-command-hook 'line-change))
	(t (remove-hook 'post-command-hook 'line-change)))
  )

(defun line-change ()
  (when (eq (get-buffer-window)
            (selected-window))
    (recenter)))

(provide 'centeredpoint)

;;; The expression `(centered-point-mode t)` will enable the mode globally

;;; centeredpoint.el ends here
