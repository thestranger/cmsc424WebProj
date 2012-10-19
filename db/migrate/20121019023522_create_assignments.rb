class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :course_id
      t.integer :assignment_id
      t.date :due_date

      t.timestamps
    end
  end
end
