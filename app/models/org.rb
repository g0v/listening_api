# == Schema Information
#
# Table name: orgs
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  eng_name    :string(255)
#

class Org < ActiveRecord::Base
  attr_accessible :description, :name, :eng_name

  has_many :rules

  validates_presence_of :name, :eng_name
  validates_length_of :description, :in => 0..255
end
