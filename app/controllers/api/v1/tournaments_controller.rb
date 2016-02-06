class Api::V1::TournamentsController < ApplicationController
  def index
  	tournaments = Tournament.all
    render json: tournaments, status: 200
  end
end
