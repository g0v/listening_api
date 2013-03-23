# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  ancestry   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  attr_accessible :ancestry, :tag_id
end
