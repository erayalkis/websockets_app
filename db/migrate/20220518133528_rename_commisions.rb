class RenameCommisions < ActiveRecord::Migration[7.0]
  def change
    rename_table "commisions", "commissions"
  end
end
