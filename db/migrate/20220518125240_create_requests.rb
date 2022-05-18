class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.integer :artist_id
      t.integer :commissioner_id
      t.timestamps
    end
  end
end
