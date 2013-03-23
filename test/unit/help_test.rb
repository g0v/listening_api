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

require 'test_helper'

class HelpTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
