class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  skip_before_action :verify_authenticity_token

  include Knock::Authenticable

  private
  # def authenticate_user(*args)
  #   p "======================================", args
  #   p "USER:", current_user
    # p "^^^^^^^", cookies.encrypted['_session']
  # end

end
