Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :blogs
  end

  resources :blogs, only: [:index, :show]

end
