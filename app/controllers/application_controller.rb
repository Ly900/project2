class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied, with: :user_not_authorized

    private

      def user_not_authorized
        flash[:error] = "You don't have access to that student."
        redirect_to root_url
      end

end
