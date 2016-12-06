class CreateChoraItems < ActiveRecord::Migration
  def up
    create_table :chora_items do |t|
      t.references :admin_user
      t.string "title", :limit=> 300 , :null=> false
      t.string "city", :null=>false
      t.string "price",:decimal=> 7, :precision=> 5,:scale=>2
      t.timestamps null: false
    end
    add_index :chora_items, [:admin_user_id,:id]
  end

  def down
    drop_table :chora_items
  end
end
