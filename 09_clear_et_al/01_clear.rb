Shoes.app do
  stack do
    @the_stack = stack do
      para 'the'
      para 'stack'
    end
  
    flow do
      @input = edit_line
      
      button 'prepend' do
        @the_stack.prepend do
          para @input.text
        end
      end
      
      button 'append' do
        @the_stack.append do
          para @input.text
        end
      end
      
      button 'clear' do
        @the_stack.clear do
          para 'cleared'
        end
      end
    end
  end
end