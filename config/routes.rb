Rails.application.routes.draw do
  resources :admins
#  devise_for :users
  get 'home/feedback'
  get 'home/feedbacks'
  post 'home/submitfeedback'
  get 'home/unauthorized'

  resources :questions do 
    resources :choices
  end
  resources :emails

  devise_for :users , :controllers => { :registrations => "users/registrations" }
  resources :profiles
  
  root 'home#feedback'   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
