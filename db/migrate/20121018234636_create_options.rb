class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.text :question
      t.text :option

      t.timestamps
    end
  end
end
