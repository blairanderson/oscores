json.array!(@ballots) do |ballot|
  json.extract! ballot, :id, :event_id
  json.url ballot_url(ballot, format: :json)
end
