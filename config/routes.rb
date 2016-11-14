Rails.application.routes.draw do

  root 'application#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get "signup" => 'users/registrations#new'
    get "login" => 'users/sessions#new'
    get "logout" => 'users/sessions#destroy'
  end

end
