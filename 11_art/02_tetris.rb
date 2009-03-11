Shoes.app do
  @s = shape do
    fill red
    rect 10, 10, 15, 15
    rect 25, 10, 15, 15
    rect 40, 10, 15, 15
    rect 55, 10, 15, 15
  end
  
  keypress do |k|
    top = @s.top
    left = @s.left
    
    case k
      when :left: left -= 15
      when :right: left += 15
      when :down: top += 15
      when :up: top -= 15
    end
    
    @s.move(left, top)
  end
end