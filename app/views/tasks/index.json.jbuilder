json.array!(@tasks) do |task|
  json.extract! task, :id, :CVEntry_id, :position, :description
  json.url task_url(task, format: :json)
end
