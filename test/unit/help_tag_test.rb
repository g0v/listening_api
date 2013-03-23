# == Schema Information
#
# Table name: help_tags
#
#  id         :integer          not null, primary key
#  help_id    :integer
#  tag_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HelpTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
