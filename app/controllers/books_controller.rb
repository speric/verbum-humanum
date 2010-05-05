class BooksController < ApplicationController
  def show
    @item = Amazon::Ecs.item_lookup(params[:id], {:response_group => 'ItemAttributes'})
    @plans = ReadingPlan.find_all_by_amazon_asin(params[:id])
  end
end