ActionController::Routing::Routes.draw do |map|

  map.connect '/incidents/news', :controller => 'incidents', :action => 'news', :format => 'xml'
  map.resources :incidents
  
  map.root :controller => 'incidents'
  
  # Default routes
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
