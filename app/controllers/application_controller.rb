class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout_by_resource

  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end

  protected

  def layout_by_resource
    if devise_controller? && action_name != 'edit'
      "devise_layout"
    else
      "application"
    end
  end

  after
end
