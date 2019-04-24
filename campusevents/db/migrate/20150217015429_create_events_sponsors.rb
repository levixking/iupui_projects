class CreateEventsSponsors < ActiveRecord::Migration
  def change
    create_table :events_sponsors, :id => false do |t|
      t.integer :event_id
      t.integer :sponsor_id
    end
  end
end
