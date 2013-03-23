class CreateUserRules < ActiveRecord::Migration
  def change
    create_table :user_rules do |t|
      t.integer :rule_id
      t.integer :user_id
      t.boolean :has_applied, :default => false

      t.timestamps
    end
    add_index :user_rules, :rule_id
    add_index :user_rules, :user_id
  end
end
