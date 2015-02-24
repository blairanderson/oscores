class CreateNominees < ActiveRecord::Migration
  def change
    create_table :nominees do |t|
      t.text :description
      t.string :video_id
      t.integer :category_id
      t.string :nominee_type
      t.string :nominee
      t.text :nominee_description
      t.references :event, index: true

      t.timestamps
    end
  end
end
