json.extract! topic, :id, :user_id, :title, :content, :created_at, :updated_at
json.url topic_url(topic, format: :json)
