class UserRule < ActiveRecord::Base
  attr_accessible :has_applied, :rule_id, :user_id
end
