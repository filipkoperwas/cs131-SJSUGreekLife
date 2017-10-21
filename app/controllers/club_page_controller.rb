class ClubPageController < ApplicationController
  def index
  end

  def show
      @club1 = Club.first
  end
end
