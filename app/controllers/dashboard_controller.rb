class DashboardController < SecuredController
  def show
    @user = session[:userinfo]
    @session = session
  end
end
