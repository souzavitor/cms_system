json.array!(@user_groups) do |user_group|
  json.extract! user_group, :id, :slug, :name, :description, :st, :has_and_belongs_to_many, :
  json.url user_group_url(user_group, format: :json)
end
