Shoes.setup do
  gem 'twitter'
end

require 'twitter'

Shoes.app do
  @container = stack
  
  Twitter::Base.new('','').timeline(:public).each do |status|
    @container.append do
      para status.text
    end
  end
end