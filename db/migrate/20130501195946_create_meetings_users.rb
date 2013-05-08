class CreateMeetingsUsers < ActiveRecord::Migration
  def change
    create_table :meetings_users do |t|
      t.integer :user_id
      t.integer :meeting_id

      t.timestamps
    end
  end
end
