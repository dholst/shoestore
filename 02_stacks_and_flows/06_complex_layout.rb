Shoes.app do
  flow do
    flow :width => '80%' do
      stack :width => '100%' do
        border black
        subtitle 'HEADER', :stroke => red
      end
    
      stack :width => '25%' do
        border black
        para 'column'
      end
    
      stack :width => '75%' do
        border black
        para 'column'
      end
    end
    
    stack :width => '20%' do
      border green
      para 'sidebar', :stroke => blue
    end
  end
end