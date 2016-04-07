class User < ActiveRecord::Base
	has_many :activities, dependent: :destroy
	has_many :posts, dependent: :destroy
	acts_as_followable
	acts_as_follower
end
