class RemoveClassificationIdFromHerb < ActiveRecord::Migration
  def change
    remove_column :herbs, :classification_id
  end
end
