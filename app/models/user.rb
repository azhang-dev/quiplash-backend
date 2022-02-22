class User < ApplicationRecord
  has_secure_password

  # def self.from_token_request(request)
  #   email = request.params["auth"] && request.params["auth"]["email"]
  #   user = self.find_by email: email
  #   p "-----------------------------", user
  #   unless user.nil? 
  #     p "0000000000000", cookies.encrypted['_session']
  #     cookies.encrypted['_session'][:user_id] = user.id
  #   end
  #   user
  # end


end
