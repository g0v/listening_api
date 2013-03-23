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

class HelpTag < ActiveRecord::Base
  attr_accessible :help_id, :tag_id
end
