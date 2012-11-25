class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :student_id
      t.integer :assignment_id
      t.float :score

      t.timestamps
    end
    add_index(:submissions, [:student_id, :assignment_id])
  end
end
