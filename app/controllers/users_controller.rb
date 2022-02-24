class UsersController < ApplicationController
  before_action :authenticate_user, except:[:create]

  def current
    render json: current_user
  end

  

  def create
    headers['Access-Control-Allow-Origin'] = '*'

    user = User.create(name: params[:name], email: params[:email], password: params[:password])


    if user.save
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
