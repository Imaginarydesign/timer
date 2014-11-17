json.array!(@entries) do |entry|
  json.extract! entry, :id, :name, :time, :employee_id
  json.url entry_url(entry, format: :json)
end
