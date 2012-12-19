class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :stream_id
      t.integer :user_id
      t.string :pic_url
      t.string :tiny_pic_url

      t.timestamps
    end
  end
end
