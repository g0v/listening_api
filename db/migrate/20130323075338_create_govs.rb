class CreateGovs < ActiveRecord::Migration
  def change
    create_table :govs do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    add_index :govs, :name
  end
end
