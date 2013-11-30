json.array!(@company_owners) do |company_owner|
  json.extract! company_owner, :user_id, :company_id
  json.url company_owner_url(company_owner, format: :json)
end
