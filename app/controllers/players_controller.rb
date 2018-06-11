class PlayersController < InheritedResources::Base
  
  def index
    @players = Player.all
    @pictures = Picture.all
  end

  def new
    @player = Player.new
    @player.pictures.build
  end
  
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show
    @player = Player.find(params[:id])
  end

  private

    def player_params
      params.require(:player).permit(
        :name,
        :number,
        :tall,
        :weight,
        :position,
        pictures_attributes: [:picture]
        )
    end
end

