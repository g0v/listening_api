class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :tag_id
      t.string :ancestry

      t.timestamps
    end

    add_index :categories, :tag_id
    add_index :categories, :ancestry
  end
end
