class CreateUsersMeetings < ActiveRecord::Migration
  def change
    create_table :users_meetings do |t|
      t.integer :user_id
      t.integer :meeting_id

      t.timestamps
    end
  end
end
