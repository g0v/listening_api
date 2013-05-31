class CreateRuleLinks < ActiveRecord::Migration
  def change
    create_table :rule_links do |t|
      t.integer :rule_id
      t.integer :link_id
    end

    add_index :rule_links, :rule_id
    add_index :rule_links, :link_id
  end
end
