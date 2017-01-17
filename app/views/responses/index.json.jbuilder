json.array!(@responses) do |response|
  json.extract! response, :id, :body, :user_id, :post_id
  json.url response_url(response, format: :json)
end
