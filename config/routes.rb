Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  devise_for :views
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' #mapping rhs with lhs
  get 'portfolios/angular', to: 'portfolios#displayangular' # localhost/portfolio/angular
  #get 'angular', to: 'portfolios#displayangular' #localhost/angular
  #get 'portfolios/angular', to: 'portfolios#displayangular' # localhost/portfolios/angular


  #get 'pages/about'
  get 'about-me', to: 'pages#about' #can put any name in lhs about, about-me etc
  #get 'pages/contact'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home' #in localhost home page is shown

end
