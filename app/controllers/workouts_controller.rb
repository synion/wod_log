class WorkoutsController < ApplicationController
  
  before_action :find_wokrout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user?, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @workouts = current_user.workouts.order("date DESC").paginate(page: params[:page], per_page: 7)
   # @workouts = Workout.find(params[:@user]).order("date DESC").paginate(page: params[:page], per_page: 7)
  end
  
  def show
  end
  
  def new
    @workout = current_user.workouts.build
  end
  
  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      flash[:success] = "New WOD was created."
      redirect_to @workout
    else
      flash[:danger] = "WOD was not created."
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end
  
  def destroy
    @workout.destroy
    redirect_to root_path
  end
  
  private
    
    def workout_params
      params.require(:workout).permit(:date, :wod, :food, :mood, :weather)
    end
    
    def find_wokrout
      @workout = Workout.find(params[:id])
    end
    
    def correct_user?
      redirect_to root_path if (@workout.user != current_user)
    end
    
end
