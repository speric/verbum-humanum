class HomeController < ApplicationController
  def index
    @latest = ReadingPlan.find(:all, :order => "created_at desc", :limit => 10)
  end
  
  def search
    if request.post?
      @items = Amazon::Ecs.item_search(params[:search_term], {:response_group => 'Medium', :sort => 'salesrank'})
    end
  end
end