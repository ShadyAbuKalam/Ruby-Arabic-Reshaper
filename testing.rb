 require 'rmagick'
 require "bidi"
 require_relative 'resharper'

 include Magick
 bidi = Bidi.new
 Text = bidi.to_visual replace_jalalah "الله"

 canvas = Magick::ImageList.new
canvas.new_image(250, 250)

text = Magick::Draw.new
text.font = "./Damas.ttf"
text.pointsize = 52
text.gravity = Magick::CenterGravity
text.annotate(canvas, 0,0,2,2, Text) 
canvas.write('rubyname.jpg')
