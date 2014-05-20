class TeamsController < ApplicationController
  def new
  end
  
  def index
    @teams = Team.paginate page: params[:page]
  end
  
  def show
    @team = Team.find params[:id]
    @users = @team.users.paginate page: params[:page]
  end
end
