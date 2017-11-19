class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :name
      t.text :description
      t.references :hierarchy, index: true, foreign_key: true
      t.references :classification, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
