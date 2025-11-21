class CreateDiscussions < ActiveRecord::Migration[8.0]
  def change
    create_table :discussions do |t|
      t.integer :topic_id
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
