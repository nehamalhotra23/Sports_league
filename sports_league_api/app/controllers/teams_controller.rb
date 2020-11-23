class TeamsController < ApplicationController
   before_action :authenticate_team,except: [:create]
   
   

  # GET /teams
  def index
    @teams = Team.all

    render json: @teams
  end

  # GET /teams/1
#   def show
#     team = Team.find_by(name: params[:name])
#     if team.password == params[:password]
#     render json: {team: team}
#     else
#       render json: { message: 'unauthorised' }
#   end
# end

  # POST /teams
   def create
    @team = Team.new(team_params)
    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_params
     params.permit(:name, :email, :password, :password_confirmation)
    end
end
