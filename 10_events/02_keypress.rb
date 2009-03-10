Shoes.app do
  @p = para 'press a key'
  
  keypress do |key|
    @p.text = 'key pressed was ', strong(key)
  end
end