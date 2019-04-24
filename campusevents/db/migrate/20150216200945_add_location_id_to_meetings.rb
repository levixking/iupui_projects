class AddLocationIdToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :location_id, :integer
  end
end
