class ExercisesController < ApplicationController
	before_action :authorize_exercise, except: :index
	def index 
		@exercises = policy_scope(Exercise)
	end

	def edit
		@exercise = User.find(params[:id])
	end

	def update
	    @user = User.find(params[:id])
	    authorize @user
	    if @user.update(set_user)
	      redirect_to users_path(@user)
	      flash[:notice] = "Successfully updated!"
	    else
	      render :edit
	    end
	end

  private

  def set_user
    params.require(:user).permit(:username, :age, :gender, :weight)
  end

  def authorize_user
    @user = User.find(params[:id])
    authorize @user
  end
end
