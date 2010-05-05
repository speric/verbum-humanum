class ReadingPlansController < ApplicationController
  before_filter :find_item, :only => [:new, :create]
    
  def create
    @reading_plan = ReadingPlan.new(params[:reading_plan])
    if request.post? and @reading_plan.save
      redirect_to reading_plan_url(@reading_plan.id)
    else
      render :action => 'new', :id => @reading_plan.amazon_asin
    end
  end
  
  def show
    @reading_plan = ReadingPlan.find(params[:id])
  end
end