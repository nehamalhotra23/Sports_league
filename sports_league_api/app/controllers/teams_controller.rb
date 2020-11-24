class TeamsController < ApplicationController
   before_action :authenticate_team,except: [:create]
   
    # GET /teams
  def index
    if current_user
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
   
#   def current_user
#     team = Team.find(params[:id])
#     if team.password == params[:password]
#     render json: {team: team}
#     else
#     render json: { message: 'No current team exists' }
# end

#   # GET /teams/1
#   def show
#     team = Team.find_by(name: params[:name])
#     if team.password == params[:password]
#     render json: {team: team}
#     else
#       render json: { message: 'unauthorised' }
#   end
# end

#   # PATCH/PUT /teams/1
#   def update
#     team = Team.find(params[:id])
#     if team.update(team_params)
#       render json: team
#     else
#       render json: @team.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /teams/1
#   def destroy
#    team = Team.find(params[:id])
#     if team.destroy
#        render json: { status: 200, msg: 'Team has been deleted.' }
#     else
#   end
# end

  # private
    def team_params
     params.permit(:name, :email, :password, :password_confirmation)
    end
end
