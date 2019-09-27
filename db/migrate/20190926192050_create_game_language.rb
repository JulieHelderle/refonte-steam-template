class CreateGameLanguage < ActiveRecord::Migration[5.2]
  def change
    create_table :game_languages do |t|
      t.references :game, foreign_key: true
      t.references :language, foreign_key: true	
      t.boolean :interface
      t.boolean :audio
      t.boolean :subtitle
    end
  end
end
