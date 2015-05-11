class SettingController < ApplicationController
  
  def change_locale
    lc = params[:locale].to_s.strip.to_sym
    
    session[:locale] = lc
    I18n.locale = lc
    render :js => "document.location.reload()"
  end
end
