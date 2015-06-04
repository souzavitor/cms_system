class Profile < ActiveRecord::Base
  has_one :system_user
end
