json.array!(@supplychains) do |supplychain|
  json.extract! supplychain, :id, :user_id, :title, :complete
  json.url supplychain_url(supplychain, format: :json)
end
