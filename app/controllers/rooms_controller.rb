class RoomsController < ApplicationController
    before_action :authenticate_user, except: [:index, :show, :update]

    skip_before_action :verify_authenticity_token, raise: false

    def index
        headers['Access-Control-Allow-Origin'] = '*'

        rooms = Room.all
        render json: rooms
    end

    def show
        headers['Access-Control-Allow-Origin'] = '*'

        room = Room.find params[:id]
        users = room.users
        room = room.attributes
        room[:users] = users
        
        
        render json: room
    end

    def create
        headers['Access-Control-Allow-Origin'] = '*'

        room = Room.new host_id: current_user.id
        p "*************************", room
        if room.save 
            serialized_data = ActiveModelSerializers::Adapter::Json.new( RoomSerializer.new(room)).serializable_hash
            ActionCable.server.broadcast 'rooms_channel', serialized_data
            head :ok
        end
    end

    def update
        headers['Access-Control-Allow-Origin'] = '*'
        room = Room.find params[:id]
        room.users << current_user

        render json: room
        
        # room.update room_update_params
        
    end

    def start
        room = Room.find params[:id]
        random_user = room.users.sample(1)
        room.imposter_id = random_user[0].id
        room.game_status = true 
        room.save
        p "()()()()()()()()()()()()()()()", room
        render json: room  
    end

    def destroy
        room = Room.destroy params[:id]
    end


    private
      
      def room_params
        params.require(:room).permit(:host_id)
      end

    #   def room_update_params
    #     params.require(:room).permit(:user_id)
    #   end
end
