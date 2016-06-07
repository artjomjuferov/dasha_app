class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.references :place, index: true, foreign_key: true
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
