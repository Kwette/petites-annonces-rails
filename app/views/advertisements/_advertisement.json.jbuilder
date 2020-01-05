json.extract! advertisement, :id, :title, :content, :state, :price, :user_id, :created_at, :updated_at
json.url advertisement_url(advertisement, format: :json)
