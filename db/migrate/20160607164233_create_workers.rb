class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :fio
      t.string :role
      t.string :phone

      t.timestamps null: false
    end
  end
end
