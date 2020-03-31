class AddValueToLibraries < ActiveRecord::Migration[5.0]
  def change
    add_column :libraries, :value, :string
  end
end
