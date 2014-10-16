class ProfilesController < ApplicationController
   def index
   @user = current_user
  end

  def edit
@user = User.find(params[:id])
  end

 
  def update_profile
    @user = User.find(params[:id])
    if @user.update(profile_params)
      redirect_to profiles_path
    else
      render "edit"
    end
  end

  private
  def profile_params
    params.require(:user).permit!
  end

end
