Shoes.app do
  stack do
    para 'images do not go in links, use :click', :size => 20
    image('../04_images/shoes.jpg', :click => 'http://www.google.com/search?q=creepy+shoes')
  end
end