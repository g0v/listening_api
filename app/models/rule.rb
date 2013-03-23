class Rule < ActiveRecord::Base
  attr_accessible :content, :gov_id, :is_published, :title, :url
end
