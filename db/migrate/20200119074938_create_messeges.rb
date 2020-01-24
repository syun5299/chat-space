class CreateMesseges < ActiveRecord::Migration[5.0]
  def change
    create_table :messeges do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :group_id, null: false, foreign_key: true
      t.text null: false
      t.string :image, null: false
      t.timestamps null: false
    end
  end
end
