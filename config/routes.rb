Rails.application.routes.draw do
  root 'flight#index'
  get  '/flights',     to: 'flight#index'
  get  '/booking/new', to: 'booking#new'
end
