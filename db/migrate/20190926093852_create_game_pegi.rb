class CreateGamePegi < ActiveRecord::Migration[5.2]
  def change
    create_table :game_pegis do |t|
      t.references :game, foreign_key: true
      t.references :pegi, foreign_key: true
    end
  end
end
