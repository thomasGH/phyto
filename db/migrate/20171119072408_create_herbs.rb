class CreateHerbs < ActiveRecord::Migration
  def change
    create_table :herbs do |t|
      t.string :name
      t.string :latin_name
      t.string :popular_name
      t.text :description
      t.references :activity, index: true, foreign_key: true
      t.references :classification, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
