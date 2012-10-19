class CreateAssigneds < ActiveRecord::Migration
  def change
    create_table :assigneds do |t|
      t.string :student_id
      t.string :course_id
      t.integer :assignment_id
      t.decimal :score

      t.timestamps
    end
  end
end
