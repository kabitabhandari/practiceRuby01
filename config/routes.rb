Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' #mapping rhs with lhs


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
