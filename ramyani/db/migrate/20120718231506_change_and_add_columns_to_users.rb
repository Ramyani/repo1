class ChangeAndAddColumnsToUsers < ActiveRecord::Migration
  def up
	add_column :users, :f_name, :string
	add_column :users, :l_name, :string
	add_column :users, :full_name, :string
	add_column :users, :contact_no, :string
	add_column :users, :user_type, :integer , :limit => 4
        add_column :users, :password, :string
    rename_column :users, :name, :user_name
  end

  def down
  end
end
