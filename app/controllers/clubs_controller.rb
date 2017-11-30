class ClubsController < ApplicationController
  def index
  end

  def show
    @club = Club.find_by(id: params[:id])
    if (@club.layout == 1)
      render :layout1
    elsif (@club.layout == 2)
      render :layout2
    elsif (@club.layout == 3)
      render :layout3
    else
      render :layout1
    end
  end

  def edit
    @club = Club.find_by(id: params[:id])
  end

  def update
    @club = Club.find_by(id: params[:id])
    if @club.update(club_params)
      if params[:club][:images] != nil
        @club.images.attach(params[:club][:images])
      end
      redirect_to club_path(@club)
    else
      render :edit
    end
  end
  
  def club_params
    params.require(:club).permit(:name, :layout,:title_1,:description_1,
                                 :title_2, :description_2,
                                 :title_3, :description_3,
                                 :title_4, :description_4,
                                 :title_5, :description_5,
                                 :description, :extra_description)
  end

  def delete_images
    @club = Club.find_by(id: params[:id])
    @club.images.each do |image|
      if image
        image.purge
      end
    end
    redirect_to club_path(@club)
  end
  
end
