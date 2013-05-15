# == Schema Information
#
# Table name: tags
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  eng_name     :string(255)
#  value        :string(255)
#  is_published :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Tag < ActiveRecord::Base
  attr_accessible :eng_name, :name, :value, :is_published

  has_many :rule_tags
  has_many :rules, :through => :rule_tags

  validates_presence_of :eng_name, :value

  scope :key, lambda { |eng_name| where(:eng_name => eng_name) }

  def value_zh
    I18n.t "#{eng_name}.#{value}"
  end
end
