json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :title, :details, :public
  json.url challenge_url(challenge, format: :json)
end
