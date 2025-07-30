class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end
  def new
    @character = Character.new
  end
  def create
    @character = Character.new (character_params.except(:player_name))
    player = Player.find_by(name: character_params[:player_name])
      if player
        @character.player = player
        if @character.save
          redirect_to characters_path
        else
          render :new
        end
      else
        render :new
      end
  end

    def show
      @character = Character.find(params[:id])
    end
end

    private
  def character_params
    params.require(:character).permit(:name, :clan, :generation, :sire, :player_name)
  end
