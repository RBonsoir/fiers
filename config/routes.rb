Rails.application.routes.draw do
	get    "makers",          to: "makers#index"
	get    "makers/:id",      to: "makers#show"
	get    "makers/new",      to: "makers#new"
	post   "makers",          to: "makers#create"
	get    "makers/:id/edit", to: "makers#edit"
	patch  "makers/:id",      to: "makers#update"
	delete "makers/:id",      to: "makers#destroy"
end
