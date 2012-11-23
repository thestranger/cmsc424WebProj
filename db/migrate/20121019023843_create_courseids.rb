class CreateCourseids < ActiveRecord::Migration
  def change
    create_table :courseids do |t|
      t.string :department
      t.integer :course_number
      t.string :semester
      t.integer :year
      t.string :section
      t.string :course_id

      t.timestamps
    end
    add_index(:courseids, [:course_id])
  end
end
