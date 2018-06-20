class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    home_show_path
  end

  def access_denied(exception)
    if current_user
      redirect_to root_path, alert: I18n.t('active_admin.access_denied.message')
    else
      redirect_to new_user_session_path, alert: exception.message
    end
  end

  private
    def sign_in_required
        redirect_to new_user_session_url unless user_signed_in?
    end
end
