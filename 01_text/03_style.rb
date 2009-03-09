Shoes.app :title => 'some style' do
  para "add style on element creation\n", :stroke => red, :align => 'center'
    
  @some_text = para "or use the style method\n"
  @some_text.style :stroke => blue, :align => 'center'
  
  @some_more_text = para "or use direct setters\n"
  @some_more_text.stroke = green
  @some_more_text.align = 'center'
  @some_more_text.size = 16
end