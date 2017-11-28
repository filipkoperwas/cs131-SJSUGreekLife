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
      if params[:club][:images] != nil
        @club.images.attach(params[:club][:images])
      else
        image = @club.images.first
        if image
          image.purge
        end
      end
      redirect_to club_path(@club)
    else
      render :edit
    end
  end
  
  def club_params
    params.require(:club).permit(:name, :picture, :description)
  end

  def myFunc(image)
    if image
      image.purge
    end
  end

end
