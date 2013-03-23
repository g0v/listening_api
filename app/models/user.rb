# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  email                :string(255)
#  encrypted_password   :string(255)
#  reset_password_token :string(255)
#  provider             :string(255)
#  uid                  :string(255)
#  birthday             :date
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :encrypted_password, :name, :provider, :uid
end
