Rails.application.routes.draw do
  resources :teams
  resources :playerbots
  scope '/auth' do
  # post 'team_token' => 'team_token#create'
  post '/signin', to: 'team_token#create'
  post  '/signup', to: 'teams#create'
end
end
