;;; moe-dark-theme.el --- An eye-candy theme for Emacser

;; Author: kuanyui<azazabc123@gmail.com>
;; Based on "tango-dark-theme"

;;; Code:
(require 'moe-theme-set-faces)

(deftheme moe-dark
  "Face colors for 256 colors terminal (dark background).
Moe, moe, kyun!")

(let ((class '((class color) (min-colors 89)))
      ;; Palette colors.
      (yellow-1 "#fce94f") (yellow-2 "#ffd700") (yellow-3 "#c4a000") (yellow-3-5 "#aaaa11") (yellow-4 "#875f00")
      (orange-1 "#ffaf5f") (orange-2 "#ff8700") (orange-3 "#ff5d17") (orange-4 "#d75f00") (orange-5 "#af5f00")
      (magenta-1 "#ff7bbb") (magenta-2 "#ff4ea3") (magenta-3 "#ff1f8b")
      (green-1 "#afff00") (green-2 "#a1db00") (green-3 "#5faf00") (green-4 "#008700") (green-5 "#005f00")
      (cyan-1 "#87ffff") (cyan-2 "#87d7af") (cyan-3 "#00d7af") (cyan-4 "#00ac8a") (cyan-5 "#5faf87") (cyan-6 "#005f5f") (cyan-7 "#236f73") (cyan-8 "#00af87") (cyan-9 "#005f87")
      (blue-1 "#5fafd7") (blue-2 "#1f5bff") (blue-3 "#005f87") (blue-4 "#005faf") (blue-5 "#0000af") (blue-6 "#00005f")
      (purple-1 "#d18aff") (purple-2 "#af5fff") (purple-3 "#9a08ff") (purple-4 "#6c0099")
      (red-1 "#ef2929")  (red-2 "#dd0000")  (red-3 "#a40000") ;; (red-4 "#5f0000")
      (white-1 "#c6c6c6") (white-2 "#c6c6c6") (white-3 "#b2b2b2") (white-4 "#a3a3a3") (black-1 "#a8a8a8") (black-2 "#8a8a8a")
      (black-2-5 "#6c6c6c") (black-3 "#4e4e4e") (black-4 "#3a3a3a") (black-5 "#303030") (black-6 "#000000")
      (LIGHT_BG "#fdfde7") (white-0 "#ffffff")
      (green-02 "#5fd700") (green-01 "#d7ff00") (green-0 "#d7ff5f") (green-00 "#d7ff87")
      (cyan-0 "#d7ffd7")
      (blue-01 "#c3c9f8") (blue-0 "#afd7ff") (blue-00 "#d7d7ff") (blue-000 "#d4e5ff")
      (yellow-0 "#ffff87") (yellow-00 "#ffffaf") (yellow-2-5 "#ffba27")
      (purple-0 "#af87ff") (purple-00 "#e6a8df")
      (red-0 "#ff4b4b") (red-00 "#ffafaf") (red-000 "#ffd5e5")
      (magenta-0 "#ffafd7") (magenta-00 "#ffd7ff")
      (orange-0 "#ffaf87") (orange-00 "#ffd787") (orange-000 "#ffd7af")
      (linum-dark "#87875f") (linum-light "#d7d7af")
      )

  (apply 'custom-theme-set-faces 'moe-dark (macroexpand '(make-moe-faces)))
  (custom-theme-set-faces
   'moe-dark
   `(default ((((class color) (min-colors 4096))
			   (:foreground ,white-1 :background ,black-5))
			  (((class color) (min-colors 256))
			   (:foreground ,white-1 :background ,black-5))
			  (,class
			   (:foreground ,white-1 :background ,black-5)))))


  (custom-theme-set-variables
   'moe-dark
   `(ansi-color-names-vector [,black-5 ,red-0 ,green-0 ,yellow-1
                                       ,blue-1 ,purple-1 ,blue-0 ,white-1])))

;; fix wrong default face under GUI version Emacs
(if window-system
    (progn
      (set-background-color "#303030")
      (set-foreground-color "#c6c6c6")))

(setq moe-theme-which-enabled 'dark)

(provide-theme 'moe-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; moe-dark-theme.el ends here
