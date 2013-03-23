# == Schema Information
#
# Table name: user_rules
#
#  id          :integer          not null, primary key
#  rule_id     :integer
#  user_id     :integer
#  has_applied :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class UserRule < ActiveRecord::Base
  attr_accessible :rule_id, :user_id
end
