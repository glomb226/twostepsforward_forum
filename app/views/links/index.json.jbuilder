json.array!(@links) do |link|
  json.extract! link, :id, :user_id, :supplychain_id, :title, :body, :complete, :eta
  json.url link_url(link, format: :json)
end
