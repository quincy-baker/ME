Rails.application.routes.draw do
	root to: 'home#index'
	get 'life', controller: 'life', action: 'index'
	get 'work', controller: 'work', action: 'index'
	get 'work/:work_item', controller: 'work', action: 'work_item', as: 'work_item'
end
