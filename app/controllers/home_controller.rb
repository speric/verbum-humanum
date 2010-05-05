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
    @plans = ReadingPlan.find_all_by_amazon_asin(params[:id])
    @reading_plan = ReadingPlan.new(params[:reading_plan])
    if request.post? and @reading_plan.save
      flash[:notice] = "Your reading plan has been created"
      redirect_to :action => "viewplan", :id => @reading_plan.id
    end
  end
  
  def viewplan
    @plan = ReadingPlan.find(params[:id])
  end
end