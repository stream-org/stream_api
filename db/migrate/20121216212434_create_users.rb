class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone
      t.string :first
      t.string :last
      t.string :profile_pic
      t.string :password

      t.timestamps
    end
  end
end
