MashLibsApp::Application.routes.draw do
  resources :sheets

  resources :games

  resources :players

  root :to => 'sheets#index'

end
