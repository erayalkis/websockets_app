class CreateCommisions < ActiveRecord::Migration[7.0]
  def change
    create_table :commisions do |t|
      t.integer :commisioner_id # person sending the commision request
      t.integer :artist_id # the artist being commisioned
      t.timestamps
    end
  end
end
