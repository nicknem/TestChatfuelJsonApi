class CreateTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :trackers do |t|
      t.string :fb_first_name
      t.string :fb_last_name
      t.string :fb_locale
      t.string :fb_gender
      t.integer :botstage

      t.timestamps
    end
  end
end
