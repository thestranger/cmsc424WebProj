class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|
      t.integer :instructor_id
      t.string :course_id
      t.boolean :isprofessor

      t.timestamps
    end
  end
end