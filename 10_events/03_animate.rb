Shoes.app do
  @img = image '../04_images/shoes.jpg', :width => 100, :height => 100
  
  animate(1) do
    @img.move(rand(width), rand(height))
  end
end