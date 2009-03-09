Shoes.app do
  flow do
    stack :width => 100 do
      border black      
      para 'column 1'
    end
    
    stack :width => -100 do
      border black      
      para 'column 2'
    end
  end
end