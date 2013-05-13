class RenameTableGovToOrg < ActiveRecord::Migration
  def up
    remove_index :govs, :name
    remove_index :govs, :eng_name
    rename_table :govs, :orgs
    add_index :orgs, :eng_name
  end

  def down
    remove_index :orgs, :eng_name
    rename_table :orgs, :govs
    add_index :govs, :eng_name
    add_index :govs, :name
  end
end
