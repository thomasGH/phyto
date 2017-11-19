class AddAuthorToComposition < ActiveRecord::Migration
  def change
    add_column :compositions, :author, :string
  end
end
