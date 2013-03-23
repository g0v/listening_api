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

require 'test_helper'

class RuleTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
