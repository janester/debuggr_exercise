Debuggr::Application.routes.draw do
  resources :songs


  resources :albums

  root :to => 'albums#index'
end
