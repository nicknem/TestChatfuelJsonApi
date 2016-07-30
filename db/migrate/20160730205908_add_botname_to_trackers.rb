class AddBotnameToTrackers < ActiveRecord::Migration[5.0]
  def change
    add_column :trackers, :botname, :string
  end
end
