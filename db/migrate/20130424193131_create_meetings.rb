class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :meeting_at
      t.relates :location

      t.timestamps
    end
  end
end
