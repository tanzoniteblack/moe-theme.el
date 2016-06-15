;;; moe-light-theme.el --- An eye-candy theme for Emacser

;; Author: kuanyui<azazabc123@gmail.com>
;; Based on "tango-dark-theme"

;;; Code:

(deftheme moe-light
  "Face colors for 256 colors terminal (light background).
Moe, moe, kyun!")

(let ((class '((class color) (min-colors 89)))
      ;; Palette colors.
      (yellow-1 "#fce94f") (yellow-2 "#ffd700") (yellow-3 "#c4a000") (yellow-3-5 "#aaaa11") (yellow-4 "#875f00")
      (orange-1 "#ffaf5f") (orange-2 "#ff8700") (orange-3 "#ff5d17") (orange-4 "#d75f00") (orange-5 "#af5f00")
      (magenta-1 "#ff7bbb") (magenta-2 "#ff4ea3") (magenta-3 "#ff1f8b")
      (green-1 "#afff00") (green-2 "#a1db00") (green-3 "#00af00") (green-4 "#008700") (green-5 "#005f00")
      (cyan-1 "#87ffff") (cyan-2 "#87d7af") (cyan-3 "#00d7af") (cyan-4 "#00ac8a") (cyan-5 "#18b2b2") (cyan-6 "#005f5f") (cyan-7 "#236f73") (cyan-8 "#00af87") (cyan-9 "#005f87")
	  (blue-1 "#5fafd7") (blue-2 "#1f5bff") (blue-3 "#005f87") (blue-4 "#005faf") (blue-5 "#0000af")
	  (purple-1 "#d18aff") (purple-2 "#b218b2") (purple-3 "#6c0099") (purple-4 "#6c0099")
      (red-1 "#ef2929")  (red-2 "#cc0000")  (red-3 "#a40000")
      (white-1 "#eeeeee") (white-2 "#dadada") (white-3 "#c6c6c6") (white-4 "#b2b2b2") (black-1 "#9e9e9e")
      (black-2 "#8a8a8a") (black-3 "#767676") (black-4 "#626262") (black-5 "#5f5f5f") (black-6 "#3a3a3a")
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

  (apply 'custom-theme-set-faces 'moe-light (macroexpand '(make-moe-faces)))

  (custom-theme-set-variables
   'moe-light
   `(ansi-color-names-vector [,black-5 ,red-0 ,green-2 ,yellow-1
                                       ,blue-1 ,purple-1 ,blue-0 ,white-0])))

;; fix wrong default face under GUI version Emacs
(if window-system
    (progn
      (set-background-color "#fdfde7")
      (set-foreground-color "#5f5f5f")))

(setq moe-theme-which-enabled 'light)

(provide-theme 'moe-light)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; moe-light-theme.el ends here
