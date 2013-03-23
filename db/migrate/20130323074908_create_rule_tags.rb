class CreateRuleTags < ActiveRecord::Migration
  def change
    create_table :rule_tags do |t|
      t.integer :rule_id
      t.integer :tag_id
      t.boolean :is_published, :default => false

      t.timestamps
    end

    add_index :rule_tags, :rule_id
    add_index :rule_tags, :tag_id
    add_index :rule_tags, :is_published
  end
end
