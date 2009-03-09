Shoes.app do
  stack do
    flow :margin => 10 do
      para 'enter something: '
      @input = edit_box 'pre-filled', :width => 300, :height => 200
    end
    
    button('clicky') {alert "You entered #{@input.text}"}
  end
end