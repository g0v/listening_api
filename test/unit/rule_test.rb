# == Schema Information
#
# Table name: rules
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  org_id       :integer
#  content      :text
#  url          :string(255)
#  is_published :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class RuleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
