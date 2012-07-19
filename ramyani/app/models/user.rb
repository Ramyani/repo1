class User < ActiveRecord::Base
attr_accessible :user_name, :email, :f_name, :l_name, :full_name, :contact_no, :user_type
validates :user_name, :presence => true , :length => { :maximum => 10}
validates :email, :presence => true
validates :f_name, :presence => true
validates :l_name, :presence => true
end
