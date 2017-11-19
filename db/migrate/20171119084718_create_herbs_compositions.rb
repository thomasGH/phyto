class CreateHerbsCompositions < ActiveRecord::Migration
  def change
    create_table :herbs_compositions do |t|
      t.references :herb, index: true, foreign_key: true
      t.references :composition, index: true, foreign_key: true
      t.string :part

      t.timestamps null: false
    end
  end
end
