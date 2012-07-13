class CreateMyUsers < ActiveRecord::Migration
  def change
    create_table :my_users do |t|
	t.string :name, :null=>false
	t.string :email, :null=>false
      t.timestamps
    end
  end
end
