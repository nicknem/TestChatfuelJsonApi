class CreateFbUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :fb_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :locale

      t.timestamps
    end
  end
end
