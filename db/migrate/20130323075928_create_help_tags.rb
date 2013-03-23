class CreateHelpTags < ActiveRecord::Migration
  def change
    create_table :help_tags do |t|
      t.integer :help_id
      t.integer :tag_id

      t.timestamps
    end

    add_index :help_tags, :help_id
    add_index :help_tags, :tag_id
  end
end
