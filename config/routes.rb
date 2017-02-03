Rails.application.routes.draw do
	root to: 'home#index'
	get 'bio', controller: 'bio', action: 'index'
	get 'work', controller: 'work', action: 'index'
	get 'work/:work_item', controller: 'work', action: 'work_item', as: 'work_item'
	# get 'contact', controller: 'contact', action: 'index'
end
