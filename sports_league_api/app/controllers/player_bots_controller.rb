class PlayerBotsController < ApplicationController

  def index
    @player_bots = PlayerBot.all
    json_response(@player_bots)
  end
  
  def create
    # @playerbots = params[:speed] + params[:strength] + params[:agility]
    # # @playerbots = Playerbot.calculate(:count, :all )
    # puts(@playerbots, "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhh")
    # if @playerbots < 100
    @player_bot = PlayerBot.create(player_bot_params)
    json_response(@player_bot)
    # else 
    # end
   
  end

  def show
    @player_bot = PlayerBot.find(params[:id])
    json_response(@player_bot)
  end


  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def player_bot_params
    params.permit(:name, :speed, :strength, :agility, :designation)
    #params.require(:player_bot).permit(:name, :speed, :strength, :agility, :designation)
  end
end
