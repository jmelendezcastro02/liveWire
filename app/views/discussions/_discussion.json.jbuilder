json.extract! discussion, :id, :topic_id, :user_id, :message, :created_at, :updated_at
json.url discussion_url(discussion, format: :json)
