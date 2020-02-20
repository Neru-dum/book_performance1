class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string         :title, foreign_key:true
      t.timestamps
    end
  end
end
