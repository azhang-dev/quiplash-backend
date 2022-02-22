class UserTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token

  def create
    cookies.encrypted[:user_id] = entity.id
    super  #  all this does is:  "render json: auth_token, status: :created"
  end

end
