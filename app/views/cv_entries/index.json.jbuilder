json.array!(@cv_entries) do |cv_entry|
  json.extract! cv_entry, :id, :user_id, :company_id, :start_date, :end_date
  json.url cv_entry_url(cv_entry, format: :json)
end
