json.array!(@pages) do |page|
  json.extract! page, :id, :title, :goal, :link, :user_id, :public
  json.url page_url(page, format: :json)
end
