class AddEventIdToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :event_id, :integer
  end
end
