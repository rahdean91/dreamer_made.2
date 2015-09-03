json.array!(@phases) do |phase|
  json.extract! phase, :id, :title
  json.url phase_url(phase, format: :json)
end
