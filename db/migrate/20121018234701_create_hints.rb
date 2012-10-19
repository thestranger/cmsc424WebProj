class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.text :question
      t.text :hint

      t.timestamps
    end
  end
end
