json.array!(@projects) do |project|
  json.extract! project, :id, :title, :goal, :user_id, :page_id, :public, :category_id, :phase_id
  json.url project_url(project, format: :json)
end
