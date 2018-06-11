class ApplicationController < ActionController::Base
  before_action :devise_sign_up_params, if: :devise_controller?
  before_action :set_locale
  protect_from_forgery with: :exception


  def default_url_options
  	{ locale: I18n.locale }
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale]= I18n.locale
  end


  private

  def devise_sign_up_params
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute, :nickname])
  end
end
