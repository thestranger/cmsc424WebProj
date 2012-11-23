class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :name
      t.text :description

      t.timestamps
    end
  add_index(:course, [:course_id])
  end
end
