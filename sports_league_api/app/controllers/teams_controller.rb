class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_team,except: [:create]
   
    # GET /teams
  def index
    if current_team
    render json: {status: 200, msg: 'Logged-in'}
    else
      render json: { message: 'team is not logged in' }
    end
  end

  # http://localhost:3001/auth/signin
  def create
   @team = Team.new(team_params)
    if @team.save
     render json: @team, status: :created
   else
     render json: @team.errors, status: :unprocessable_entity
   end
 end
 
 # GET /teams/1
  def show
    @team = Team.find(params[:id])
    render json: @team, status: :created
end
   
  # PATCH/PUT /teams/1
  def update
    team = Team.find(params[:id])
    if team.update(team_params)
      render json: team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

#   # DELETE /teams/1
  def destroy
   team = Team.find(params[:id])
    if team.destroy
       render json: { status: 200, msg: 'Team has been deleted.' }
    else
  end
end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
     params.permit(:name, :email, :password, :password_confirmation)
    end
end
