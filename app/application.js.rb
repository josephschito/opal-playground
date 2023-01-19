require 'opal'
require 'native'

require 'element'
require 'greeter'
require 'clock'
require 'multicolor_text'
require 'rotating_text'

greeter = Greeter.new id: '#greeter'
greeter.greet!

clock = Clock.new id: '#clock'
clock.tick!

multicolor_text = MulticolorText.new id: '#multicolor-text'
multicolor_text.live!

rotating_text = RotatingText.new id: '#rotating-text'
rotating_text.rotate!
