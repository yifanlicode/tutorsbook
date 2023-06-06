Rails.application.routes.draw do
  
  # sign out path
  devise_scope :member do
    get '/members/sign_out' => 'devise/sessions#destroy'
  end

  
  devise_for :members
  resources :tutors 

  get 'home/about'
  root 'home#index' # this is the home page route (i.e. localhost:3000)

end
