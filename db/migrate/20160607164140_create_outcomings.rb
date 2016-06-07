class CreateOutcomings < ActiveRecord::Migration
  def change
    create_table :outcomings do |t|
      t.string :object
      t.integer :sum
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
