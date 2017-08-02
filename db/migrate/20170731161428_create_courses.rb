class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :ta_name
      t.integer :course_num
      t.string :days_of_week
      t.string :time_of_day
      t.string :semester

      t.timestamps
    end
  end
end
