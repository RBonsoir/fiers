module Admin
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action :verify_admin

    protected

    def verify_admin
      unless current_user.admin?
        flash[:alert] = I18n.t("admin.authorization_failure")
        redirect_to root_path
      end
    end
  end
end
