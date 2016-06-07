class CreateIncomings < ActiveRecord::Migration
  def change
    create_table :incomings do |t|
      t.references :sponsor, index: true, foreign_key: true
      t.integer :sum
      t.references :event

      t.timestamps null: false
    end
  end
end
