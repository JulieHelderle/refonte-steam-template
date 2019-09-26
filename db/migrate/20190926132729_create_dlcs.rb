class CreateDlcs < ActiveRecord::Migration[5.2]
  def change
    create_table :dlcs do |t|
      t.string :name
      t.string :license
      t.date :date_release
      t.float :price
      t.text :description
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
