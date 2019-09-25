class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.date :date_release
      t.float :price
      t.text :description
      t.string :license
      t.date :last_update
      t.string :players

      t.timestamps
    end
  end
end
