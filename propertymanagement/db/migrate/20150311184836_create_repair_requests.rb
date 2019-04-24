class CreateRepairRequests < ActiveRecord::Migration
  def change
    create_table :repair_requests do |t|
      t.date :open_date
      t.date :close_date
      t.text :request_details
      t.integer :submitter_id
      t.integer :responder_id

      t.timestamps null: false
    end
  end
end
