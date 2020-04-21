class AddAuthorToLibraries < ActiveRecord::Migration[5.0]
  def change
    add_column :libraries, :author, :string
  end
end
