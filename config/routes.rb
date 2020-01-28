Rails.application.routes.draw do
  root 'responses#new'
  resources :enneagram_scores
  resources :responses do
    collection do
      delete 'remove_all'
    end
  end

  resources :questions
  devise_for :users
  resources :enneagram_numbers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
