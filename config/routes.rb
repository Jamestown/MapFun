ActionController::Routing::Routes.draw do |map|
  
  map.resources :incidents
  
  map.root :controller => 'incidents'
  
  # Default routes
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
