class RenameColumnGovIdToRule < ActiveRecord::Migration
  def up
    remove_index :rules, :gov_id
    rename_column :rules, :gov_id, :org_id
    add_index :rules, :org_id
  end

  def down
    remove_index :rules, :org_id
    rename_column :rules, :org_id, :gov_id
    add_index :rules, :gov_id
  end
end
