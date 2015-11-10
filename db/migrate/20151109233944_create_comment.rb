class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.text :content
      t.references :topic, index: true, foreign_key: true
      t.integer :rating
    end
  end
end
