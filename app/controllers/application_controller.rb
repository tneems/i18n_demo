class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  private
  def set_locale
    if locale_exists?(params[:locale])
      I18n.locale = params[:locale]
    end
  end

  def locale_exists?(locale)
    return false if locale.nil?
    I18n.available_locales.include?(locale.to_sym)
  end
  
  def default_url_options(options = {})
    { locale: I18n.locale }
  end
end
