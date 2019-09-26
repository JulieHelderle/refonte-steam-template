class CreatePegis < ActiveRecord::Migration[5.2]
  def change
    create_table :pegis do |t|
      t.string :name
      t.text :imgurl

      t.timestamps
    end
  end
end
