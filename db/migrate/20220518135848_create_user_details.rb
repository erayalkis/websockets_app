class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.integer :user_id, null: false
      t.string  :user_pronouns, null: false, default: ""
      t.string  :user_twitter_url, default: ""
      t.string  :user_toyhouse_url, default: ""
      t.string  :user_pronouns_page_url, default: ""
      t.string  :user_carrd_url, default: ""
      t.string  :user_personal_site_url, default: ""
      t.timestamps
    end
  end
end
