class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topicss do |t|
      t.integer :topic_honey_id
      t.integer :topic_poster_id

      t.timestamps null: false # This last one will take care of `updated_at` and `created_at`
    end
  end
end
