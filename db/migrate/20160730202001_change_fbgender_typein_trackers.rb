class ChangeFbgenderTypeinTrackers < ActiveRecord::Migration[5.0]
  def change
    change_column :trackers, :fb_gender, 'string'
  end
end
