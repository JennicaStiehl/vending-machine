Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "machine#index"
  get '/dispense', to: 'machine#dispense', as: 'dispense'
  get '/products/:id', to: 'product#show', as: 'product'
end
