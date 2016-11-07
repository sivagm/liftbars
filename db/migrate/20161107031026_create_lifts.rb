class CreateLifts < ActiveRecord::Migration[5.0]
  def change
    create_table :lifts do |t|
      t.date :join_date
      t.string :name
      t.boolean :fit
      t.integer :age
      t.integer :repsperformed
      t.integer :onerm

      t.timestamps
    end
  end
end
