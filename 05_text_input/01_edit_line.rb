Shoes.app do
  stack do
    flow :margin => 10 do
      para 'enter something: '
      @input = edit_line :width => 300
    end
    
    button('clicky') {alert "You entered #{@input.text}"}
  end
end