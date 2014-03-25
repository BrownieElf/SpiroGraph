def navigate
  degrees = [0, 90, 180, 270]
  @i ||= 0
    
  @i = 0 if @i == degrees.length
  p val = degrees[@i]

  p @i += 1
 val.to_s
end

navigate
navigate
navigate
navigate
navigate
