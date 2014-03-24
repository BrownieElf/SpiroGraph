include Math



def pythag(x, y, x_target, y_target)
 # puts "(#{x}, #{y})"
  #puts "(#{x_target}, #{y_target})"
  sqrt((x_target - x) ** 2 + (y_target - y) ** 2) 
end

#p pythag(3, 3, -3, 3)