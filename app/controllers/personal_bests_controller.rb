class PersonalBestsController < ApplicationController
  
  before_action :find_personal_best, only: [:edit, :update, :destroy]
  
  def new
    @personal_best = current_user.personal_bests.new
  end
  
  def create
    @personal_best = current_user.personal_bests.create(personal_best_params)
    if @personal_best.save
      redirect_to current_user
    else
      render 'new'
    end
  end
  
  def edit
    @personal_best = current_user.personal_bests.find(params[:id])
  end
  
  def update
    if @personal_best.update(personal_best_params)
      redirect_to current_user
    else
      redirect_to current_user
    end
  end
  
  def destroy
    @personal_best.destroy
    redirect_to current_user
  end
  
  private
    
    def personal_best_params
      params.require(:personal_best).permit(:date, :exercise, :score)
    end
    
    def find_personal_best
      @personal_best = current_user.personal_bests.find(params[:id])
    end
  
end
