Shoes.app :width => 700 do
  stack do
    image 'shoes.jpg', :width => 200, :height => 200, :margin => 10
    para 'images load from current folder'
    
    image "http://shoooes.net/images/wiki-logo.png", :margin => 10
    para 'unless full path is given'
    
    image 'shoes.jpg', :width => 100, :height => 100, :top => 10, :left => 310
    image 'shoes.jpg', :width => 100, :height => 100, :top => 30, :left => 340
    para 'images are stacked in code order, ', strong(em('no')), ' z-ordering', :top => 140, :left => 310
  end
end