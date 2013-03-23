class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.string :name
      t.string :email
      t.text :content

      t.timestamps
    end

    add_index :helps, :name
    add_index :helps, :email
  end
end
