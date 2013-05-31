# encoding: utf-8
# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ActiveRecord::Base
  attr_accessible :name, :url

  has_many :rule_links
  has_many :rules, :through => :rule_links

  validates_presence_of :url
  validates_format_of :url, :with => URI::regexp(%w(http https)), :message => '格式不對喔，有沒有漏掉 http:// 呢？'
end
