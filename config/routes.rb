Rails.application.routes.draw do
  resources :links do
    resources :comments
    member do
      post :upvote
      post :downvote
    end
  end
  resources :comments do
    resources :comments
  end
end
