class CreateEvals < ActiveRecord::Migration[5.2]
  def change
    create_table :evals do |t|
      t.string :pseudo
      t.integer :rating
      t.text :comment
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
