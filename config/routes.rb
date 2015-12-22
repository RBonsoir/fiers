Rails.application.routes.draw do

	resources :makers do
		resources :products
	end

	resources :articles

end
