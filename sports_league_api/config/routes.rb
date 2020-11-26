Rails.application.routes.draw do
  resources :teams
  resources :playerbots
  resources :rosters
  scope '/auth' do
  post 'team_token' => 'team_token#create'
  post '/signin', to: 'team_token#create'
  post  '/signup', to: 'teams#create'
  delete '/logout' => 'teams#destroy'
  get '/logout' => 'teams#destroy'
  get  '/teams/:name', to: 'teams#show'
  get  '/teams/:name/rosters', to: 'rosters#index'
  put  '/teams/:id', to: 'teams#update'
  delete  '/teams/:id', to: 'teams#delete'
  post '/playerbots', to: 'playerbots#create'
  post  '/rosters', to: 'rosters#create'
  get  '/rosters/:id', to: 'rosters#show'
  post '/playerbots/:id', to: 'playerbots#show'

end
end
