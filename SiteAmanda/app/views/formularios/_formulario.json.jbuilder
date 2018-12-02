json.extract! formulario, :id, :email, :contratante, :descricao, :data, :local, :status, :created_at, :updated_at
json.url formulario_url(formulario, format: :json)
