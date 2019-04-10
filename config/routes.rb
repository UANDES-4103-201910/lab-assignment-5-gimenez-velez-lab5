Rails.application.routes.draw do
  get 'ticket_types/create'
  get 'ticket_types/update'
  get 'ticket_types/destroy'
  get 'tickets/create'
  get 'tickets/update'
  get 'tickets/destroy'
  get 'event_venues/create'
  get 'event_venues/update'
  get 'event_venues/destroy'
  get 'events/create'
  get 'events/update'
  get 'events/destroy'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
