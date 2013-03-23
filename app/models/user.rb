class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :encrypted_password, :name, :provider, :reset_password_token, :uid
end
