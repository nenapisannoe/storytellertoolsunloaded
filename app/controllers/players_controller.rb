class PlayersController < ApplicationController
    def index
      @players = Player.all
    end
    def new
      @player = Player.new
    end

  def create
    @player = Player.new player_params
    if @player.save
      redirect_to players_path
    else
      render :new
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path, notice: "Игрок удалён"
  end

  def show
    @player = Player.find(params[:id])
    # @characters = @player.characters
  end



    private

  def player_params
    params.require(:player).permit(:name)
  end
end
