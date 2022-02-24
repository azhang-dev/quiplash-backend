class UsersController < ApplicationController
  before_action :authenticate_user, except:[:create]

  def current
    render json: current_user
  end

  def create
    headers['Access-Control-Allow-Origin'] = '*'

    user = User.create! user_params

    if user.persisted?
      render json: user
   else
     render json: {error: 'Could not create User'}, status: 402
   end

  end

  def edit

  end

  private

  def user_params
    params.require(:_json).permit(:name, :email, :password)
  end
      

end
