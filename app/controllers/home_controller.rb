class HomeController < ApplicationController
  before_action :sign_in_required, only: [:show]

  def index
    @player = Player.all
  end

  def show
  end
end
