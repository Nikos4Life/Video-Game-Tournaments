class Api::V1::TournamentsController < ApplicationController
  def index
  	tournaments = Tournament.all
    render json: tournaments, status: 200
  end
  def create
  	tournament = Tournament.create(tournament_params)
    render json: tournament, status: 201
  end
  private
    def tournament_params
        params.require(:tournament).permit(:name)
    end
end
