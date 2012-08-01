class User < ActiveRecord::Base
has_many :posts , :dependent => :destroy
attr_accessible :user_name, :email, :password, :f_name, :l_name, :full_name, :contact_no, :user_type
validates :user_name, :length => { :maximum => 30}
validates :email, :presence => true
validates :f_name, :presence => true
validates :l_name, :presence => true
before_create :make_full_name
before_create :make_user_name
before_create :make_default_user_type


protected
def make_full_name
self.full_name = self.f_name.capitalize+" "+self.l_name.capitalize unless attribute_present?("full_name")
end

protected
def make_user_name
self.user_name = self.email unless attribute_present?("user_name")
end

protected
def make_default_user_type
self.user_type = 1
end

end
