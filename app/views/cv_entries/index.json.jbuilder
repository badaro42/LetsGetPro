json.array!(@cv_entries) do |cv_entry|
  json.extract! cv_entry, :user_id, :company_id, :start_date, :end_date, :job
  json.url cv_entry_url(cv_entry, format: :json)
end
