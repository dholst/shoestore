Shoes.app :width => 400 do
  flow do
    para 'flows fill their space'
    caption 'from left to right'
    tagline 'until they reach'
    caption 'the right boundary'
    para 'then they start over on the next line'
  end
  
  flow do
    para strong("think html inline elements"), :stroke => red
  end
  
  flow do
    banner "shoes doesn't believe in a ", strong('horizontal'), " scrollbar"
  end
end