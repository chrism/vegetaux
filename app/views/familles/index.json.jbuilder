json.array!(@familles) do |famille|
  json.extract! famille, :id, :nom
  json.url famille_url(famille, format: :json)
end
