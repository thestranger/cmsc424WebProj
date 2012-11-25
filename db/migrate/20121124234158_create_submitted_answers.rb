class CreateSubmittedAnswers < ActiveRecord::Migration
  def change
    create_table :submitted_answers do |t|
      t.integer :question_id
      t.integer :submission_id
      t.text :given_answer
      t.float :points

      t.timestamps
    end
    add_index(:submitted_answers, [:submission_id])
  end
end
