class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def required_logged_in
    unless logged_in?
      redirect_to root_path
    end
  end
end
