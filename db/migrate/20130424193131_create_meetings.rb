class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :meeting_at
      t.integer :location_id

      t.timestamps
    end
  end
end
