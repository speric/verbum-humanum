class HomeController < ApplicationController
  def index
  end
  
  def search
    if request.post?
      @items = Amazon::Ecs.item_search(params[:search_term], {:response_group => 'Medium', :sort => 'salesrank'})
    end
  end
  
  def book
    @item = Amazon::Ecs.item_lookup(params[:id], {:response_group => 'ItemAttributes'})
  end
end
