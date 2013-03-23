# == Schema Information
#
# Table name: rule_tags
#
#  id           :integer          not null, primary key
#  rule_id      :integer
#  tag_id       :integer
#  is_published :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RuleTag < ActiveRecord::Base
  attr_accessible :rule_id, :tag_id
end
