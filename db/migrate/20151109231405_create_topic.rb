class CreateTopic < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.references :honey, index: true, foreign_key: true
    end
  end
end
