class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :url
      t.text :preview
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
