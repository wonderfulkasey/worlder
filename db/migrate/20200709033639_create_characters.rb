class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :character
      t.text :body
      t.references :world, null: false, foreign_key: true

      t.timestamps
    end
  end
end
