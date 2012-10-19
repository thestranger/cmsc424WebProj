class CreateAnswereds < ActiveRecord::Migration
  def change
    create_table :answereds do |t|
      t.string :student_id
      t.text :question
      t.string :given_answer
      t.boolean :correct

      t.timestamps
    end
  end
end
