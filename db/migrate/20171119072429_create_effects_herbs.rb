class CreateEffectsHerbs < ActiveRecord::Migration
  def change
    create_table :effects_herbs do |t|
      t.references :effect, index: true, foreign_key: true
      t.references :herb, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
