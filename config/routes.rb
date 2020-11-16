Rails.application.routes.draw do
  # /
  root to: 'flats#index'
  # /flats/134
  get 'flats/:id', to: 'flats#show', as: :flat
end
