class AddIndexToFbUsers < ActiveRecord::Migration[5.0]
  def change
    add_index :fb_users, :bot_id
  end
end
