class TeamsController < ApplicationController
  respond_to :json
  
  def index
    respond_with Team.all
  end

  def show
    respond_with team
  end

  private

  def team
    Team.find(params[:id])
  end
end
