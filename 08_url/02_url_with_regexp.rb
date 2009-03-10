class ShoeBox < Shoes
  url '/', :index
  url '/(\w+)', :any_page
  
  def index
    stack do
      para 'what page would you like to go to? '
      @page = edit_line
      button "GO" do
        visit "/#{@page.text}"
      end
    end
  end
  
  def any_page(name)
    para "Congratulations, you made it to ", strong(name), ", now ", link('get outta here', :click => '/')
  end
end

Shoes.app