class AddIndexOnCommisions < ActiveRecord::Migration[7.0]
  def change
    add_index :commisions, [:commisioner_id, :artist_id]
  end
end
