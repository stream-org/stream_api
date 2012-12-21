class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :picture_id

      t.timestamps
    end
    add_index :likes, [:user_id, :picture_id]
  end
end
