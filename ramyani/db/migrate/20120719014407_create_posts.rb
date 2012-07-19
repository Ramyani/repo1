class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
	t.integer :user_id, :null=>false
	t.string :title
	t.string :description
      t.timestamps
    end
    add_foreign_key(:posts, :users)
  end
end
