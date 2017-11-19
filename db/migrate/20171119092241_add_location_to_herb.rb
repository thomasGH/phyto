class AddLocationToHerb < ActiveRecord::Migration
  def change
    add_column :herbs, :location, :string
  end
end
