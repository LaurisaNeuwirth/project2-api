class AddNameHiveToUser < ActiveRecord::Migration
  def change
    add_column :users, :name,:string, null: false, index: { unique: true }
    add_column :users, :hive, :string
  end
end
