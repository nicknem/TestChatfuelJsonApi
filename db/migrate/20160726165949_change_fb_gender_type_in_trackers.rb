class ChangeFbGenderTypeInTrackers < ActiveRecord::Migration[5.0]
  def change
    change_column :trackers, :fb_gender, 'integer USING CAST(fb_gender AS integer)'
  end
end
