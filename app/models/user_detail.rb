class UserDetail < ActiveRecord::Base
  belongs_to :user, required: true
end
