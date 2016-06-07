class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :phone
      t.string :fio

      t.timestamps null: false
    end
  end
end
