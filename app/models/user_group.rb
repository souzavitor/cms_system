class UserGroup < ActiveRecord::Base
  has_and_belongs_to_many :system_users
end
