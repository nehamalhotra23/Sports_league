Rails.application.routes.draw do
  resources :teams do
  resources :player_bots
  end
  scope '/auth' do
  post 'team_token' => 'team_token#create'
  post '/signin', to: 'team_token#create'
  post '/signin', to: 'teams#show'
  post  '/signup', to: 'teams#create'
  delete '/logout' => 'teams#destroy'
  get '/logout' => 'teams#destroy'
end
end
