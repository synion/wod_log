class WorkoutsController < ApplicationController
  
  before_action :find_wokrout, only: [:show, :edit, :update, :destroy]
  
  
  def index
    
  end
  
  def show
  end
  
  def new
    @workout = Workout.new
  end
  
  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
    
    def workout_params
      params.require(:workout).permit(:date, :wod, :food, :mood, :weather)
    end
    
    def find_wokrout
      @workout = Workout.find(params[:id])
    end
    
end
