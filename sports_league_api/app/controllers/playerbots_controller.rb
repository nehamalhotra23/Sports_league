class PlayerbotsController < ApplicationController

  def index
    @playerbots = Playerbot.all
    json_response(@playerbots)
  end
  
  def create
    # @playerbots = params[:speed] + params[:strength] + params[:agility]
    # # @playerbots = Playerbot.calculate(:count, :all )
    # puts(@playerbots, "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhh")
    # if @playerbots < 100
    @playerbots = Playerbot.create(playerbots_params)
    json_response(@playerbots)
    else 
    end
   
    end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def playerbots_params
    params.permit(:name, :speed, :strength, :agility)
  end
end
