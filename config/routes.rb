Rails.application.routes.draw do
  root  'flight#index'
  get   '/flights',     to: 'flight#index'
  get   '/bookings',    to: 'booking#new'
  post  '/bookings',    to: 'booking#create'
  get   '/booking/:id', to: 'booking#show'
end
