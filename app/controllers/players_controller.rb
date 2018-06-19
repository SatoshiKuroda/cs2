class PlayersController < InheritedResources::Base
  
  def index
    @players = Player.all
    @search = Player.ransack(params[:q])
    @results  = @search.result(distinct: true)
    @q = Player.search
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
        #format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        #format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show
    @player = Player.find(params[:id])
  end

  def search
    @q = Player.search(search_params)
    @players = @q.result.order(:created_at)
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

    def search_params
      params.require(:q).permit!
    end
end

