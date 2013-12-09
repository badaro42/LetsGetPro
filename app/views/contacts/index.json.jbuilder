json.array!(@contacts) do |contact|
  json.extract! contact, :id, :user_requesting_id, :target_user_id, :state
  json.url contact_url(contact, format: :json)
end
