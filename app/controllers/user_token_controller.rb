class UserTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token

  def create
    cookies.signed["session"] = {user_id: entity.id}
    # cookies.signed["user_id"] = entity.id
    p "<><><><><><><><><><>", cookies.signed["session"]
    super  #  all this does is:  "render json: auth_token, status: :created"
  end

end
