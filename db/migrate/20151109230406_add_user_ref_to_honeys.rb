class AddUserRefToHoneys < ActiveRecord::Migration
  def change
    add_reference :honeys, :user, index: true, foreign_key: true
  end
end
