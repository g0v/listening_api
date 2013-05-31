# == Schema Information
#
# Table name: rule_links
#
#  id      :integer          not null, primary key
#  rule_id :integer
#  link_id :integer
#

class RuleLink < ActiveRecord::Base
  attr_accessible :link_id, :rule_id

  belongs_to :rule
  belongs_to :link
end
