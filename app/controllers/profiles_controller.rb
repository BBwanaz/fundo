class ProfilesController < ApplicationController
before_action :set_profile, only: [:show, :edit, :update, :destroy]
 access all: [:show],  student: [:show, :edit, :update, :set_profile, :profile_params], tutor: [:show, :edit, :update, :set_profile, :profile_params]

def show
end

def edit
	@profile = current_user.profile
end

def update
 if @profile.update(profile_params)
      redirect_to my_profile_path, notice: 'Profile was successfully updated.'
    else
      render :edit
    end

end

 def set_profile
   @profile = Profile.find(params[:id])
 end
def profile_params
	params.require(:profile).permit(:name, :surname, :image)
end

end