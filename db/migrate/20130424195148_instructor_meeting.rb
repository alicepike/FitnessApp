class InstructorMeeting < ActiveRecord::Migration
  def change
  	create_table("instructors_meetings") do |t|
  		t.integer("instructor_id")
  		t.integer("meeting_id")
  	end
  end

end
