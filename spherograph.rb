 require 'artoo'
 #require 'artoo/robot'


# class Spherograph

  connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-GPO-AMP-SPP'
  device :sphero, :driver => :sphero

  work do
  
  	every(1.seconds) { sphero.roll(255, navigate) }


    # every(1.seconds) do
    # puts "New Color..."
    # sphero.set_color(rand(255), rand(255), rand(255))
    # end
  end
# end

def navigate

  #degrees = [0, 90, 180, 270]
  degrees = [201, 77, 300, 174, 41, 271, 142, 7, 241, 103, 340, 201, 77, 300, 175, 41, 271, 142, 7, 243, 105, 340, 202, 78, 302, 176, 43, 272, 144, 8, 243, 105, 340, 203, 80, 303, 176, 44, 273, 146, 10, 243, 107, 343, 205, 80, 305, 178, 46, 273, 146, 10, 247, 108, 343, 206, 80, 306, 178, 46, 274, 146, 11, 247, 109, 343, 207, 83, 307, 179, 48, 275, 150, 11, 247, 109, 345, 208, 83, 308, 179, 49, 276, 150, 13, 247, 111, 347, 209, 84, 310, 181, 51, 277, 150, 13, 247, 111, 347, 210, 84, 311, 181, 52, 277, 152, 14, 247, 112, 349, 212, 86, 313, 182, 54, 278, 152, 15, 247, 113, 350, 213, 86, 314, 182, 55, 279, 152, 16, 253, 115, 350, 214, 87, 315, 184, 56, 279, 156, 18, 253, 116, 351, 216, 88, 315, 184, 56, 280, 156, 19, 253, 116, 352, 216, 89, 318]
  @i ||= 0
    
  @i = 0 if @i == degrees.length
   val = degrees[@i]

   @i += 1
 p val.to_s
end

# navigate
# navigate
# navigate
# navigate
# navigate


# s = Spherograph.new


