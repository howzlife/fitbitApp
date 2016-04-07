class Post < ActiveRecord::Base

	validates :with_user, presence: true
	validates :content, presence: true

end
