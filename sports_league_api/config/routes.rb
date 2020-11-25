Rails.application.routes.draw do
  resources :teams
  resources :playerbots
  scope '/auth' do
  post 'team_token' => 'team_token#create'
  post '/signin', to: 'team_token#create'
  post  '/signup', to: 'teams#create'
  get  '/teams/:id', to: 'teams#show'
  put  '/teams/:id', to: 'teams#update'
  delete  '/teams/:id', to: 'teams#delete'
  post '/playerbots', to: 'playerbots#create'

end
end
