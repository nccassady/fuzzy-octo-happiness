json.array!(@alternatives) do |alternative|
  json.extract! alternative, :id, :name, :description, :company_id
  json.url alternative_url(alternative, format: :json)
end
