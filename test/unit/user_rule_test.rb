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

require 'test_helper'

class UserRuleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
