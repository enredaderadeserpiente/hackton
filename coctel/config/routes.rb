Rails.application.routes.draw do
	get 'copenometros/calcular', to: 'copenometros#calcular'
  post 'copenometros/calcular'

  resources :copenometros
  
  get 'pages/index'

  root 'copenometros#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
