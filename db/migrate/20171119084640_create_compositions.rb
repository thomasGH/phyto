class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.string :number
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
