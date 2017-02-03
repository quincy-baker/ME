Rails.application.routes.draw do
	root to: 'home#index'
	get 'work', controller: 'work', action: 'index'
	# get 'bio', controller: 'bio', action: 'index'
	get 'contact', controller: 'contact', action: 'index'
end
