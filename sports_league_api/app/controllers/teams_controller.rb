class TeamsController < ApplicationController
    def show
        # serializer representable
        render json: Team.find_by_id_or_slug(params[:id])
    end
end