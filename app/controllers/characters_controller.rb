class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end
  def new
    @character = Character.new
  end
def create
  if Player.none?
    redirect_to characters_path, alert: "невозможно создать персонажа, когда не существует игрока."
    return
  end
  @character = Character.new(character_params)
  if @character.save
    redirect_to characters_path
  else
    render :new
  end
end


  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to character_path
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      redirect_to character_path(@character)
    end
  end

    def show
      @character = Character.find(params[:id])
    end
end

    private
  def character_params
    params.require(:character).permit(:name, :clan, :generation, :sire,  :player_id)
  end
