class ClubsController < ApplicationController
  def index
  end

  def show
    @club = Club.find_by(id: params[:id])
  end

  def edit
    @club = Club.find_by(id: params[:id])
  end

  def update
    @club = Club.find_by(id: params[:id])
    if @club.update(club_params)
      @club.images.attach(params[:club][:images])
      redirect_to club_path(@club)
    else
      render :edit
    end
  end
  
  def club_params
    params.require(:club).permit(:name, :picture, :description)
  end
end
