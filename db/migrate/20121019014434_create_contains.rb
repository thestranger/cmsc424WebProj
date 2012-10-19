class CreateContains < ActiveRecord::Migration
  def change
    create_table :contains do |t|
      t.string :course_id
      t.integer :assignment_id
      t.text :question

      t.timestamps
    end
  end
end
