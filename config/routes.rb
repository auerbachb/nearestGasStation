Rails.application.routes.draw do
  get 'nearest_gas' => 'nearest_gas_station#show', defaults: { format: 'json' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
