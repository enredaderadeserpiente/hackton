Rails.application.routes.draw do
  get 'copenometros/calcular', to: 'copenometros#calcular'
  post 'copenometros/calcular'


  get 'pages/index'

  resources :usuarios do
    resources :copenometros
    member do
      get 'copetes'

    end
  end
  root 'usuarios#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
