class ClubPageController < ApplicationController
  def index
  end

  def show
      @club = Club.find(1)
  end
  
  def show2
      @club = Club.find(2) 
      render "show"
  end
  
  def show3
      @club = Club.find(3)
      render "show"
  end
end
