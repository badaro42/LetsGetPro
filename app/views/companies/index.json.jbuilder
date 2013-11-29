json.array!(@companies) do |company|
  json.extract! company, :name, :logotype, :description
  json.url company_url(company, format: :json)
end
