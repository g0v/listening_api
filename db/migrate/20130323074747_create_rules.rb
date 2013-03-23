class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :title
      t.integer :gov_id
      t.text :content
      t.string :url
      t.boolean :is_published, :default => false

      t.timestamps
    end

    add_index :rules, :gov_id
    add_index :rules, :is_published
  end
end
