class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :instructor_ssn
      t.string :course_id

      t.timestamps
    end
  end
end
