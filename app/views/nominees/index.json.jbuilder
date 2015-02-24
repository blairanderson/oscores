json.array!(@nominees) do |nominee|
  json.extract! nominee, :id, :description, :video_id, :category_id, :nominee_type, :nominee, :nominee_description, :event_id
  json.url nominee_url(nominee, format: :json)
end
