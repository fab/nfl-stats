class TeamsController < ApplicationController
  respond_to :json

  def index
    respond_with Team.includes(:stats).all
  end

  def show
    respond_with team
  end

  private

  def team
    Team.includes(:stats).find(params[:id])
  end
end
