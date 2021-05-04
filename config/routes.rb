Rails.application.routes.draw do
  resources :games
  resources :levels
  resources :challenges
  resources :faces
  resources :challenge_answers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
