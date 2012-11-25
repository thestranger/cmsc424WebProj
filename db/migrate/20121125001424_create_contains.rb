class CreateContains < ActiveRecord::Migration
  def change
    create_table :contains do |t|
      t.integer :question_id
      t.integer :assignment_id

      t.timestamps
    end
  end
end
