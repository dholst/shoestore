Shoes.app do
  @p = para 'move the mouse...please'
  
  motion do |x,y|
    @p.text = "mouse is at #{x},#{y}"
  end
end