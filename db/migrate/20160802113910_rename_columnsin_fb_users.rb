class RenameColumnsinFbUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :fb_users, :first_name, :fb_first_name
    rename_column :fb_users, :last_name, :fb_last_name
    rename_column :fb_users, :gender, :fb_gender
    rename_column :fb_users, :locale, :fb_locale

  end
end
