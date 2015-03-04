json.array!(@companies) do |company|
  json.extract! company, :id, :name, :hrc_score, :description
  json.url company_url(company, format: :json)
end
