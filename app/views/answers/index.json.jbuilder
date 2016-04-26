json.array!(@answers) do |answer|
  json.extract! answer, :id, :name, :message, :task_id
  json.url answer_url(answer, format: :json)
end
