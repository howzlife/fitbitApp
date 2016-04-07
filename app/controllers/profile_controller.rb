class ProfileController < ApplicationController
	def index 
		@user = User.find_by! auth0_id: session[:userinfo][:uid]
		@user_profile = User.find_by! auth0_id: params[:uid]
	end

	def add_to_fitfam
		respond_to do |format|
			@user1 = User.find(params[:following_user])
			@user2 = User.find(params[:followee_user])

			if create_follow_association(@user1, @user2)
				format.json { render :json => :success, :status => 200 } 
        	else 
            	format.json { render :json => :error, :status => :unprocessable_entity } 
        	end 
		end
	end

	private
	def create_follow_association(user1, user2)
		user1.follow(user2)
	end
end
