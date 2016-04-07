require 'csv'

class DashboardController < SecuredController
    before_action :check_if_new_user

  def show
    @user = session[:userinfo]
    @session = session
  end
  
  def burnedCaloriedata
    data = BurnedCalorie.where(uid: session[:userinfo][:uid]).pluck(:day, :calories)
    hashData = Hash[*data.flatten]
    respond_to do |format|
      format.json {
        render :json => hashData
    }
    end
  end

  def consumedCaloriedata
    data = ConsumedCalorie.where(uid: session[:userinfo][:uid]).pluck(:day, :calories)
    hashData = Hash[*data.flatten]
    respond_to do |format|
      format.json {
        render :json => hashData
    }
    end
  end

  private 

  def check_if_new_user
    if !User.exists?(auth0_id: session[:userinfo][:uid])
      @user_info = session[:userinfo]
      User.create(auth0_id: @user_info[:uid], name: @user_info[:info][:nickname], 
        email: "nico_dubus@hotmail.com", about: "#{@user_info[:info][:nickname]} 
        Loves snowboarding, jogging and scuba diving", avatar: "", cover: "", 
        age: @user_info[:extra][:raw_info][:age], date_of_birth: @user_info[:extra][:raw_info][:dateOfBirth],
        gender: @user_info[:extra][:raw_info][:gender], height: @user_info[:extra][:raw_info][:height], 
        weight: @user_info[:extra][:raw_info][:weight]
        )
    end
  end
end

# ,
#           "2016-01-25T18:25:43.511Z" => 10, 
#           "2016-01-26T18:25:43.511Z" => 0, 
#           "2016-01-27T18:25:43.511Z" => 3
