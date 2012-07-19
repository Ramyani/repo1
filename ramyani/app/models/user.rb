class User < ActiveRecord::Base
has_many :posts
attr_accessible :user_name, :email, :f_name, :l_name, :full_name, :contact_no, :user_type
validates :user_name, :presence => true , :length => { :maximum => 10}
validates :email, :presence => true
validates :f_name, :presence => true
validates :l_name, :presence => true
before_create :make_full_name


protected
def make_full_name
self.full_name = self.f_name+" "+self.l_name unless attribute_present?("full_name")
end
end
