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
  url '/config', :config
  
  def index
    background '#444'
    
    stack do
      @messages = stack(:height => 500, :scroll => true)

      @bottom = stack(:height => 100) do
        flow do
          @update = edit_line(:state => 'disabled')
          
          @update_button = button('update', :state => 'disabled') do
            Twitter::Base.new($username.text, $password.text).update(@update.text)
            @update.text = ''
            update_timeline
          end
        end
      
        flow do
          button('refresh').click do
            update_timeline
          end
      
          button('config') { visit '/config' }
        end
      end
    end

    update_timeline
  end
  
  def config
    background '#444'
    
    stack :margin => 5 do
      flow do
        para 'Username: '
        $username = edit_line :width => 100
      end
      
      flow do
        para 'Password: '
        $password = edit_line :width => 100, :secret => true
      end
      
      button('done') { visit '/' }
    end
  end
  
  def update_timeline
    @messages.clear
    
    get_tweets.each_with_index do |status, i|
      @messages.append do
        info status.user
        
        flow do 
          background('#666'...'#777')
          border '#444'
          
          stack :width => 60, :margin => 3 do
            image CGI::unescape(status.user.profile_image_url), :width => 50, :height => 50
          end
          
          stack :width => -60, :margin => 3  do
            para strong("#{status.user.screen_name}: "), status.text, em(" #{time_ago_in_words(Time.parse(status.created_at))} ago"), :margin_top => 0
          end
        end
      end
    end
  end
  
  def get_tweets
    if $username && $password
      @update.state = @update_button.state = nil
      Twitter::Base.new($username.text, $password.text).timeline(:friends)      
    else
      Twitter::Base.new('', '').timeline(:public)
    end    
  end
end

Shoes.app :width => 300, :height => 600