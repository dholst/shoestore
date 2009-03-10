Shoes.app do
  @bg1 = background red
  @bg2 = background green
    
  button('toggle green') do
    @bg2.toggle
  end
end