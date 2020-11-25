class RostersController < ApplicationController

  def index
    @rosters = Roster.all
    json_response(@rosters)
  end

  def show
    @roster = Roster.find(params[:id])
    json_response(@roster)
  end

  def create
    @roster = Roster.create(roster_params)
    json_response(@roster)
  end

  def update
    @roster = Roster.find(params[:id])
    @roster.update(roster_params)
  end

  def destroy
    @roster = Roster.find(params[:id])
    @roster.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

#   def roster_params
#     params.permit(:author, :content)
#   end
end