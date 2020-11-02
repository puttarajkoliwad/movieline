class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    helper_method :require_admin
    def require_admin
        if !(current_user.admin?)
          flash[:alert] = "Only signed in ADMINS can perform that action!"
          redirect_to root_path
        end
    end
end
