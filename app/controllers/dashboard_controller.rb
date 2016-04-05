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

  end
end

# ,
#           "2016-01-25T18:25:43.511Z" => 10, 
#           "2016-01-26T18:25:43.511Z" => 0, 
#           "2016-01-27T18:25:43.511Z" => 3
