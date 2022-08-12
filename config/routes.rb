Rails.application.routes.draw do
  get 'issues/:number/events', to: 'events#events_by_number', as: :events_by_number, defaults: { format: :json }
  resources :events, only: :create
end
