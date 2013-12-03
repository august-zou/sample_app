SampleApp::Application.routes.draw do
 
  get "users/new"
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
  root to: 'static_pages#home'
end
