class User < ActiveRecord::Base
  has_many :user_mixtapes
  has_many :mixtapes, :through => :user_mixtapes

  has_secure_password
  
end
