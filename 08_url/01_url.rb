class ShoeBox < Shoes
  url '/', :index
  url '/subpage', :sub_page
  
  def index
    para 'what happens when you ', link('click me', :click => '/subpage')
  end
  
  def sub_page
    para em('TADA!!!   '), link('back', :click => '/')
  end
end

Shoes.app