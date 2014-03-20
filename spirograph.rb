require 'rubygems'
require 'matrix'
require 'launchy'
#include Math



# removeall():
# spirograph = function (v_R, v_r, v_p, v_nRotations, s_color)
# {
# t = vectorin(0, 0.05, 2 * pi * v_nRotations);:
# x = (v_R + v_r) * cos(t) + v_p * cos((v_R + v_r) * t / v_r);:
# y = (v_R + v_r) * sin(t) + v_p * sin((v_R + v_r) * t / v_r);:
# plot(x, y, s_color):
# }
# spirograph(60, -15, 10, 1, green):

class Spirograph
Launchy.open( "http://www.ruby-lang.org" )
  def initialize(v_R, v_r, v_p, v_rotations, s_color)
    @v_R = v_R
    @v_r = v_r
    @v_p = v_p
    @v_rotations = v_rotations
    @s_color = s_color
  end
  
  def pattern#(v_R, v_r, v_p, v_rotations, s_color)
    @s_color
  end
end

s = Spirograph.new(1,2,3,4,:red)
p s.pattern