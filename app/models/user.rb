class User < ActiveRecord::Base
  has_many :collections
  before_create -> { self.auth_token = SecureRandom.hex }
end
