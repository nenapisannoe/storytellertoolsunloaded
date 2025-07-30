class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.text :name
      t.text :clan
      t.integer :generation
      t.text :sire
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
