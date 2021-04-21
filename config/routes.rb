Rails.application.routes.draw do
  root 'scores#index'
  resources :scores, only: %i[index]
  get :actual_file, to: 'scores#actual_file'
end
