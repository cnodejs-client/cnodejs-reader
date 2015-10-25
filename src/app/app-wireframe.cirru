
var
  hsl $ require :hsl
  React $ require :react

var
  reset $ require :../util/reset

var
  Spinner $ React.createFactory $ require :./spinner

var
  ({}~ div span) React.DOM

= module.exports $ React.createClass $ {}
  :displayName :app-wireframe

  :render $ \ ()
    div ({} (:style $ @styleRoot))
      div ({} (:style $ @styleBox))
        Spinner
        span ({} (:style $ @styleText)) ":Loading app..."

  :styleRoot $ \ ()
    {}
      :position :absolute
      :width :100%
      :height :100%
      :display :flex
      :justifyContent :center
      :alignItems :center

  :styleBox $ \ ()

  :styleText $ \ ()
    {}
      :fontFamily reset.fashionFonts
      :marginTop :20px
      :display :inline-block
      :color $ hsl 0 10 70
      :fontSize :13px
