class Tag < ActiveRecord::Base
  attr_accessible :eng_name, :is_published, :name, :value
end
