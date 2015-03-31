json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :billable
  json.url task_url(task, format: :json)
end
