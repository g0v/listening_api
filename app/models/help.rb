# == Schema Information
#
# Table name: helps
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Help < ActiveRecord::Base
  attr_accessible :content, :email, :name
end
