json.array!(@posts) do |post|
  json.extract! post, :id, :post_title, :post_body, :post_date, :post_author
  json.url post_url(post, format: :json)
end
