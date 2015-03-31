json.array!(@time_entries) do |time_entry|
  json.extract! time_entry, :id, :project_id, :task_id, :user_id, :hours, :date
  json.url time_entry_url(time_entry, format: :json)
end
