class AddUserIdToLibraries < ActiveRecord::Migration[5.0]
  def change
    add_column :libraries, :user_id, :integer
  end
end
