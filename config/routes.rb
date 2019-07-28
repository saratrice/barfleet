Rails.application.routes.draw do
  root 'welcome#index'
  get 'dashboard' => 'dashboard#show'

  delete 'logout' => 'logout#logout'
  get 'auth/oauth2/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
