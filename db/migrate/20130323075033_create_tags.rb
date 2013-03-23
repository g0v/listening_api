class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :eng_name
      t.string :value
      t.boolean :is_published

      t.timestamps
    end

    add_index :tags, :is_published
    add_index :tags, :name
  end
end
