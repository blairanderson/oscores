class CreateUserEvents < ActiveRecord::Migration
  def change
    create_table :user_events do |t|
      t.references :event, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
