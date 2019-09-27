class CreateTrailers < ActiveRecord::Migration[5.2]
  def change
    create_table :trailers do |t|
      t.text :video
      t.text :img1
      t.text :img2
      t.text :img3
      t.text :img4
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
