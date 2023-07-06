Rails.application.routes.draw do
  
  resources :venues 
  resources :comments
  resources :events
  #resources :planners
  #need route to planners because i need the extra planner info (unless i get nested from somehwere)
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
