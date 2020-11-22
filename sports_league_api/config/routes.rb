Rails.application.routes.draw do
  resources :teams
  scope '/auth' do
  post 'team_token' => 'team_token#create'
  post '/signin', to: 'team_token#create'
  post '/signup', to: 'teams#create'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
