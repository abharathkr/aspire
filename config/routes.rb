Rails.application.routes.draw do
#  devise_for :users
  get 'home/feedback'
  get 'home/feedbacks'
  post 'home/submitfeedback'

  resources :questions do 
    resources :choices
  end
  resources :emails

  devise_for :users , :controllers => { :registrations => "users/registrations" }

  root 'home#feedback'   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
