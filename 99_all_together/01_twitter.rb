Shoes.setup do
  gem 'twitter'
  gem 'actionpack'
end

require 'twitter'
require 'action_view'
require 'cgi'

class TwitterShoes < Shoes
  include ActionView::Helpers::DateHelper
  
  url '/', :index
  
  def index
    background white

    stack(:margin => 10) do
      @messages = stack(:margin => 5, :height => 300, :scroll => true)

      button('refresh').click do
        add_public_timeline_to @messages
      end
    end

    add_public_timeline_to @messages
  end
  
  def add_public_timeline_to(slot)
    slot.clear
    
    Twitter::Base.new('','').timeline(:public).each_with_index do |status, i|
      slot.append do
        flow do 
          background((i % 2 > 0) ? '#fff' : '#cec')

          info status.user
          
          stack :width => 60, :margin => 5 do
            image CGI::unescape(status.user.profile_image_url), :width => 50, :height => 50
          end
          
          stack :width => -60, :margin => 5 do
            para strong("#{status.user.screen_name}: "), status.text, em(" #{time_ago_in_words(Time.parse(status.created_at))} ago"), :margin_top => 0
          end
        end
      end
    end
  end
end

Shoes.app