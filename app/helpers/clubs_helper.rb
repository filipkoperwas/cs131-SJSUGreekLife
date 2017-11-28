module ClubsHelper
  def check_if_officer
    if @user.acc_type == "club officer"
      return true
    else
      return false
    end
  end
end
