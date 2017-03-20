Rails.application.routes.draw do
  root  'flight#index'
  get   '/flights',      to: 'flight#index'
  resources :bookings, only:[:new, :create, :show]
end
