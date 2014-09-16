json.array!(@small_ads) do |small_ad|
  json.extract! small_ad, :id, :name, :category_id, :price
  json.url small_ad_url(small_ad, format: :json)
end
