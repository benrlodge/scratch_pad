Rails.application.routes.draw do

  # resources :tasks

	scope "api" do
		resources :notes
		resources :tasks
	end

	root 'application#index'

end
