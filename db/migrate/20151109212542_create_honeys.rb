class CreateHoneys < ActiveRecord::Migration
   def change
    create_table :honeys do |t|
      t.string :name
      t.integer :honey_rating_by_queen
      #t.references :user

      t.timestamps null: false # This last one will take care of `updated_at` and `created_at`
    end
  end
end
