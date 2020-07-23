json.extract! query, :id, :paper, :level, :year, :session, :board, :description, :image, :created_at, :updated_at
json.url query_url(query, format: :json)
