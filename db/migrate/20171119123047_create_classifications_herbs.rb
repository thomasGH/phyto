class CreateClassificationsHerbs < ActiveRecord::Migration
  def change
    create_table :classifications_herbs do |t|
      t.references :classification, index: true, foreign_key: true
      t.references :herb, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
