Debuggr::Application.routes.draw do
  resource :songs


  resources :albums

  root :to => 'album#index'
end
