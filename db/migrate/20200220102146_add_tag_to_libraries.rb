class AddTagToLibraries < ActiveRecord::Migration[5.0]
  def change
    add_column :libraries, :tag, :string
  end
end
