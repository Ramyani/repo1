class Post < ActiveRecord::Base
belongs_to :user
  attr_accessible :user_id, :title, :description
before_create :set_default_title


protected
def set_default_title
self.title = "no subject" unless attribute_present?("title")
end
end
