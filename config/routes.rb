MashLibsApp::Application.routes.draw do
  resources :sheets

  resources :games do 
    member do 
      get "mashup"
    end
      
  end

  resources :players
 

  root :to => 'players#index'

end
