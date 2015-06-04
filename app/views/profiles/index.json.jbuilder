json.array!(@profiles) do |profile|
  json.extract! profile, :id, :about, :gender, :birthdate, :has_one
  json.url profile_url(profile, format: :json)
end
