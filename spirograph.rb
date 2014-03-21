require 'nokogiri'
require 'launchy'
require 'matrix'
include Math


class Spirograph

  
  
  def pattern(v_R, v_r, v_p, v_nRotations, s_color)
    puts "v_R is the radius of the outer fixed circle: #{v_R}"
    puts "v_r is the radius of the inner moving circle: #{v_r}"
    puts "v_p is the distance the drawing point is from center: #{v_p}"
    puts "v_nRotations is the number of rotations: #{v_nRotations}"
    puts "s_color is the color: #{s_color}"

    range = []
    s = 0.05
    points = []

    (0..(2 * PI * v_nRotations)).step(s) { |x| range << x.round(2) }
    
    range.each do |t|
      x = (v_R + v_r) * cos(t) + v_p * cos((v_R + v_r) * t / v_r)
	    y = (v_R + v_r) * sin(t) + v_p * sin((v_R + v_r) * t / v_r)
	    #puts "coords (#{x.to_i}, #{y.to_i})"
      points << [ x.to_i, y.to_i ]
    end

    output = Nokogiri::XML::Builder.new do |doc|
        doc.svg xmlns:"http://www.w3.org/2000/svg", viewBox:"-250 -250 500 500" do
        points.each do |x,y|
        doc.circle r:1, cx:x, cy:y, fill:s_color 
        end
      end
    end

    path = File.dirname(__FILE__) + "/image.svg"

    File.open(path, 'w+') do |file|
       file << output.to_xml
    end
    # application doesn't work...had to set file to open with chrome in osx
    Launchy.open( path, :application => 'Google Chrome.app' ) 
    

  end
end

s = Spirograph.new
#s.pattern(60, -15, 10, 1, :red)
#s.pattern(100, -10, 20, 100, :blue)
s.pattern(75, -30, 25, 100, :purple) #star