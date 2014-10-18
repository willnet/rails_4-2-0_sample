class User < ActiveRecord::Base
  enum status: [ :pre, :active, :archived ]
end
