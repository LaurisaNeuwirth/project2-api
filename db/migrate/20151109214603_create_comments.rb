class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :comment_author
      t.text :comment_text
      t.integer :topic_id
      t.integer :honey_id_in_topic
      t.integer :comment_rating_of_honey


      t.timestamps null: false # This last one will take care of `updated_at` and `created_at`
    end
  end
end
