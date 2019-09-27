class CreateMods < ActiveRecord::Migration[5.2]
  def change
    create_table :mods do |t|
      t.string :name
      t.string :license
      t.date :date_release
      t.text :description
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
