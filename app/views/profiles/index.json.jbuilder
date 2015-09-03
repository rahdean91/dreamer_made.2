json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :job_title, :about_me
  json.url profile_url(profile, format: :json)
end
