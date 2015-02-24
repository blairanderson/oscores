class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.references :event, index: true

      t.timestamps
    end
  end
end
