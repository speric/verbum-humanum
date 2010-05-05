class HomeController < ApplicationController
  def index
    puts amazon_api_keys["aws_access_key_id"]
    puts amazon_api_keys["aws_secret_key"]
  end
  
  def search
    if request.post?
      @items = Amazon::Ecs.item_search("C.S. Lewis", {:response_group => 'Medium', :sort => 'salesrank'})
    end
  end
end
