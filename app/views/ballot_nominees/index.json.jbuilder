json.array!(@ballot_nominees) do |ballot_nominee|
  json.extract! ballot_nominee, :id, :video_id, :category_key, :bn_type, :nominee, :nominee_description, :ballot_id
  json.url ballot_nominee_url(ballot_nominee, format: :json)
end
