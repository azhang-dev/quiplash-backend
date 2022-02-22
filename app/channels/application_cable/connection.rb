module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect 
      self.current_user = find_verified_user
    end

    private

    def find_verified_user
      # binding.pry
      token = request.params["token"]
      user = JWT.decode token, Rails.application.secrets.secret_key_base, true, { :algorithm => 'HS256' }
      user_id = user.first["sub"]
      p "**********************************************", user_id
      if verified_user = User.find_by(id: user_id)
        verified_user
      else  
        reject_unauthorized_connection
      end
    end
  

  end
end
