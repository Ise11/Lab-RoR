json.array!(@names) do |name|
  json.extract! name, :id, :message, :task_id
  json.url name_url(name, format: :json)
end
