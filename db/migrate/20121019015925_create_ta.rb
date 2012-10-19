class CreateTa < ActiveRecord::Migration
  def change
    create_table :ta do |t|
      t.string :instructor_ssn
      t.string :course_id

      t.timestamps
    end
  end
end
