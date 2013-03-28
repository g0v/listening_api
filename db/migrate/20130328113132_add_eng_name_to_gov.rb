class AddEngNameToGov < ActiveRecord::Migration
  def change
    add_column :govs, :eng_name, :string
    add_index :govs, :eng_name
  end
end
