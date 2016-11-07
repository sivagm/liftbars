class CreateLeans < ActiveRecord::Migration[5.0]
  def change
    create_table :leans do |t|
      t.date :date
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
