class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :ta_name
      t.integer :course_num
      t.date :date

      t.timestamps
    end
  end
end
