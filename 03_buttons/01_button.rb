Shoes.app do
  stack do
    button('press me')
    
    button("Hello World?") {alert "Hellooooo World!"}
    
    button('click me').click {alert "I've been clicked"}
    
    button 'wide button', :width => 200
  end
end