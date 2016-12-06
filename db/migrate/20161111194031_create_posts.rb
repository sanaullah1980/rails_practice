class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.references :admin_user
      t.string 'title', :limit=>300
      t.text 'description'
      t.string  'city'
      t.string  'state'
      t.timestamps null: false
    end
  end

  def down
    drop_table :posts
  end
end
