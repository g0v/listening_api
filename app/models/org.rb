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
end
