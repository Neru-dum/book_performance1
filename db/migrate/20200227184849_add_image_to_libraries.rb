class AddImageToLibraries < ActiveRecord::Migration[5.0]
  def change
    add_column :libraries, :image, :string
  end
end
