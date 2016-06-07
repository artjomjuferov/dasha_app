class CreateEventsMembers < ActiveRecord::Migration
  def change
    create_table :events_members do |t|
      t.references :event, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
