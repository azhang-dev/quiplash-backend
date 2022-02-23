class RoomsController < ApplicationController

    skip_before_action :verify_authenticity_token, raise: false

    def index
        rooms = Room.all
        render json: rooms
    end

    def show
        room = Room.find params[:id]
        room = room.attributes
        render json: room
    end

    def create
        headers['Access-Control-Allow-Origin'] = '*'

        room = Room.new room_params

        if room.save 
            serialized_data = ActiveModelSerializers::Adapter::Json.new( RoomSerializer.new(room)).serializable_hash
            ActionCable.server.broadcast 'rooms_channel', serialized_data
            head :ok
        end
    end

    def update
        room = Room.find params[:id]
        
    end

    def destroy
        room = Room.destroy params[:id]

    end

    private
      
      def room_params
        params.require(:room).permit(:host_id)
      end

      def room_update_params
        params.require(:room)
      end
end
