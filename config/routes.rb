ActionController::Routing::Routes.draw do |map|
  map.root :controller => "home"
  map.resources   :books
  map.resources   :reading_plans
  map.connect     ':controller/:action/:id'
  map.connect     ':controller/:action/:id.:format'
end
