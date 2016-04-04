require 'csv'

class DashboardController < SecuredController
  def show
    @user = session[:userinfo]
    @session = session
  end
  def data
    respond_to do |format|
      format.json {
        render :json =>
        {
          "2016-01-23T18:25:43Z" => 5, 
          "2016-01-24T18:25:43Z" => 8,
          "2016-01-25T18:25:43Z" => 10, 
          "2016-01-26T18:25:43Z" => 0, 
          "2016-01-27T18:25:43Z" => 3
        }
      }
    end
  end
end
