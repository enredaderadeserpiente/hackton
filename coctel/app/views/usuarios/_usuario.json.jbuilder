json.extract! usuario, :id, :genero, :peso, :edad, :horas_tomando, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
