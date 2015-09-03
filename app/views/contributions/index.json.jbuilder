json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :title, :details, :challenge_id, :user_id, :reward, :contribution_type
  json.url contribution_url(contribution, format: :json)
end
