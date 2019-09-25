class CreateGameTags < ActiveRecord::Migration[5.2]
  def change
    create_table :game_tags do |t|
      t.references :game, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end

