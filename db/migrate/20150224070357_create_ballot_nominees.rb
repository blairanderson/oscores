class CreateBallotNominees < ActiveRecord::Migration
  def change
    create_table :ballot_nominees do |t|
      t.string :video_id
      t.string :category_key
      t.string :bn_type
      t.string :nominee
      t.text :nominee_description
      t.references :ballot, index: true

      t.timestamps
    end
  end
end
