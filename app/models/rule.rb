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

class Rule < ActiveRecord::Base
  attr_accessible :content, :org_id, :title, :url, :is_published

  belongs_to :org
  has_many :rule_tags
  has_many :tags, :through => :rule_tags
  has_many :rule_links
  has_many :links, :through => :rule_links

  validates_presence_of :title, :org_id
end
