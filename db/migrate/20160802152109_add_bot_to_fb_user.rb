class AddBotToFbUser < ActiveRecord::Migration[5.0]
  def change
    add_column :fb_users, :bot_id, :integer
  end
end
