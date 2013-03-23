# == Schema Information
#
# Table name: tags
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  eng_name     :string(255)
#  value        :string(255)
#  is_published :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Tag < ActiveRecord::Base
  attr_accessible :eng_name, :is_published, :name, :value
end
