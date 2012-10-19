class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :ssn
      t.string :name

      t.timestamps
    end
  end
end
