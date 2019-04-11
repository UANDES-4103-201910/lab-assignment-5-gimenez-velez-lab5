Rails.application.routes.draw do
  get 'ticket_types/create'
	get 'ticket_types/:id', to: 'ticket_types#show'
	get 'ticket_types', to: 'ticket_types#index'
  get 'ticket_types/update'
  get 'ticket_types/destroy'
  get 'tickets/create'
	get 'tickets/:id', to: 'tickets#show'
	get 'tickets', to: 'tickets#index'
  get 'tickets/update'
  get 'tickets/destroy'
  get 'event_venues/create'
	get 'event_venues/:id', to: 'event_venues#show'
	get 'event_venues', to: 'event_venues#index'
  get 'event_venues/update'
  get 'event_venues/destroy'
  get 'events/create'
	get 'events/:id', to: 'events#show'
	get 'events', to: 'events#index'
  get 'events/update'
  get 'events/destroy'
  get 'users/create'
	get 'users/:id', to: 'users#show'
	get 'users', to: 'users#index'
  get 'users/update/:id', to: 'users#update'
  get 'users/destroy'
 
	resources :ticket_types do
		resources :tickets
	end
end
