Shoes.app do
  flow do
    stack :width => '100%' do
      border black
      subtitle 'The HEADER'
    end
    
    stack :width => '33%' do
      border black
      para 'column 1'
    end
    
    stack :width => '33%' do
      border black
      para 'column 2'
    end

    stack :width => '34%' do
      border black
      para 'column 3'
    end
  end
end