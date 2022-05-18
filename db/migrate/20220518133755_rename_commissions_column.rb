class RenameCommissionsColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :commissions, :commisioner_id, :commissioner_id
  end
end
