class DropRequests < ActiveRecord::Migration[7.0]
  def change
    drop_table :requests
  end
end
