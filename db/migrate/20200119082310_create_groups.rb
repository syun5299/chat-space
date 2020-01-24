class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :group_name, null: false
      t.string :user_id, null: false
      t.timestamps, null: false
    end
  end
end
