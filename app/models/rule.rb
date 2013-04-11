# == Schema Information
#
# Table name: rules
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  gov_id       :integer
#  content      :text
#  url          :string(255)
#  is_published :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Rule < ActiveRecord::Base
  attr_accessible :content, :gov_id, :title, :url, :is_published

  belongs_to :gov
end
