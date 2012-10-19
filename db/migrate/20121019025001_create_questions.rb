class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.string :correct_answer
      t.string :question_type

      t.timestamps
    end
  end
end
